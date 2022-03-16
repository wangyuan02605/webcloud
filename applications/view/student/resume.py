
from flask_login import  current_user
from flask import Blueprint, render_template,request
#蓝图
from applications.models import Resume
from applications.common import curd
from applications.extensions import db
from applications.common.utils.http import table_api, fail_api, success_api
resume_BP = Blueprint('resume', __name__, url_prefix='/resume')
from applications.common.utils.validate import xss_escape
from applications.schemas import resumeOutSchema
from applications.common.helper import ModelFilter
from applications.common.curd import model_to_dicts
#简历信息管理

@resume_BP.get("/")
def index():
    #获取当前用户

    #查询当前用户下的所有招聘信息
    resume_list=Resume.query.filter(Resume.user_id==current_user.id).all()

    #传递至前台
    return render_template("student/index.html",recruitment_list=resume_list)

#简历信息发布

@resume_BP.get("/add")
def add():

    #传入id
    return render_template("student/add.html")

@resume_BP.post("/save")
def save():
    req_json = request.json

    info = xss_escape(req_json.get('info'))
    remark = xss_escape(req_json.get('remark'))

    user_id=current_user.id

    resumeNew=Resume(info=info,remark=remark,user_id=user_id)
    db.session.add(resumeNew)
    db.session.commit()
    return success_api(msg="增加成功")

#简历信息删除

@resume_BP.delete("/remove/<int:id>")

def remove(id):

    recruitment_remove = curd.get_one_by_id(Resume, id)

    if current_user.id ==recruitment_remove.user_id:
        res = Resume.query.filter_by(id=id).delete()
        # 检查当前用户是否是所属用户

        db.session.commit()
        if not res:
            return fail_api(msg="删除失败")
        return success_api(msg="删除成功")
    else:
        return fail_api(msg="判定 失败")







#简历信息修改


@resume_BP.get('/edit/<int:id>')

def edit(id):

    #传入的id为信息id
    resume_Update = curd.get_one_by_id(Resume, id)
    #验证信息为当前用户所属
    if current_user.id==resume_Update.user_id:
        return render_template("student/edit.html",recruitment_Update=resume_Update)
    else:
        return fail_api(msg="信息不一致")


#  编辑信息
@resume_BP.put('/update')
def update():

    req_json = request.json
    id =xss_escape(req_json.get("id"))
    info = xss_escape(req_json.get("info"))
    remark = xss_escape(req_json.get("remark"))
    # 传入修改的信息

    resume_Update = curd.get_one_by_id(Resume, id)
    if current_user.id == resume_Update.user_id:
        print("核定一致")
        Resume.query.filter_by(id=id).update({'info': info, 'remark': remark})
        db.session.commit()
        return success_api(msg="更新成功")

    else:
        print("核定不一致")
        return fail_api(msg="信息不一致")

#分页查询

@resume_BP.get('/data')
def data():
    # 获取请求参数
    info = xss_escape(request.args.get('info', type=str))
    remark = xss_escape(request.args.get('remark', type=str))
    user_id=current_user.id
    # 查询参数构造
    mf = ModelFilter()
    if info:
        mf.contains(field_name="info", value=info)
    if remark:
        mf.contains(field_name="remark", value=remark)
    if user_id:
        mf.exact(field_name="user_id", value=user_id)
    # orm查询
    # 使用分页获取data需要.items
    resume_ = Resume.query.filter(mf.get_filter(model=Resume)).layui_paginate()
    count = resume_.total
    # 返回api
    return table_api(data=model_to_dicts(schema=resumeOutSchema, data=resume_.items), count=count)



