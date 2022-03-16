
from flask_login import  current_user
from flask import Blueprint, render_template,request
#蓝图
from applications.models import Recruitment
from applications.common import curd
from applications.extensions import db
from applications.common.utils.http import table_api, fail_api, success_api
recruitment_BP = Blueprint('recruitment', __name__, url_prefix='/recruitment')
from applications.common.utils.validate import xss_escape
from applications.schemas import recruitmentOutSchema
from applications.common.helper import ModelFilter
from applications.common.curd import model_to_dicts
#招聘信息管理

@recruitment_BP.get("/")
def index():
    #获取当前用户
    print("打印当前用户")
    print(current_user.id)
    #查询当前用户下的所有招聘信息
    recruitment_list=Recruitment.query.filter(Recruitment.user_id==current_user.id).all()
    print(recruitment_list)
    #传递至前台
    return render_template("enterprise/index.html",recruitment_list=recruitment_list)

#招聘信息发布
@recruitment_BP.get("/add")
def add():

    #传入id
    return render_template("enterprise/add.html")

@recruitment_BP.post("/save")
def save():
    req_json = request.json

    info = xss_escape(req_json.get('info'))
    remark = xss_escape(req_json.get('remark'))

    user_id=current_user.id
    #新信息默认未审核
    recruitmentNew=Recruitment(info=info,remark=remark,user_id=user_id,status=0)
    db.session.add(recruitmentNew)
    db.session.commit()
    return success_api(msg="增加成功")

#招聘信息删除

@recruitment_BP.delete("/remove/<int:id>")

def remove(id):

    recruitment_remove = curd.get_one_by_id(Recruitment, id)

    if current_user.id ==recruitment_remove.user_id:
        res = Recruitment.query.filter_by(id=id).delete()
        # 检查当前用户是否是所属用户

        db.session.commit()
        if not res:
            return fail_api(msg="删除失败")
        return success_api(msg="删除成功")
    else:
        return fail_api(msg="判定 失败")







#招聘信息修改


@recruitment_BP.get('/edit/<int:id>')

def edit(id):

    #传入的id为信息id
    recruitment_Update = curd.get_one_by_id(Recruitment, id)
    #验证信息为当前用户所属
    if current_user.id==recruitment_Update.user_id:
        return render_template("enterprise/edit.html",recruitment_Update=recruitment_Update)

    else:
        return fail_api(msg="信息不一致")


#  编辑信息
@recruitment_BP.put('/update')
def update():

    req_json = request.json
    id =xss_escape(req_json.get("id"))
    info = xss_escape(req_json.get("info"))
    remark = xss_escape(req_json.get("remark"))
    status = xss_escape(req_json.get("status"))
    # 传入修改的信息

    recruitment_Update = curd.get_one_by_id(Recruitment, id)
    if current_user.id == recruitment_Update.user_id:
        print("核定一致")
        #修改信息需要审核
        Recruitment.query.filter_by(id=id).update({'info': info, 'remark': remark,'status':status})
        db.session.commit()
        return success_api(msg="更新成功")

    else:
        print("核定不一致")
        return fail_api(msg="信息不一致")

#分页查询

@recruitment_BP.get('/data')
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
    recruitment_ = Recruitment.query.filter(mf.get_filter(model=Recruitment)).layui_paginate()
    count = recruitment_.total
    # 返回api
    return table_api(data=model_to_dicts(schema=recruitmentOutSchema, data=recruitment_.items), count=count)



