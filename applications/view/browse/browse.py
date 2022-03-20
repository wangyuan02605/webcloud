from flask import Blueprint, render_template, request
from flask_login import login_required, current_user
from sqlalchemy import desc
from applications.models import Recruitment
from applications.common import curd
from applications.common.curd import model_to_dicts, enable_status, disable_status
from applications.common.helper import ModelFilter
from applications.common.utils.http import table_api, fail_api, success_api
from applications.common.utils.rights import authorize
from applications.common.utils.validate import xss_escape
from applications.extensions import db

from applications.models import  AdminLog,Recruitment ,Employ
from applications.schemas import recruitmentOutSchema ,employOutSchema

browse_BP = Blueprint('browse', __name__, url_prefix='/browse')

#招聘信息查看

@browse_BP.get('/')
@authorize("user:browse")
def index():
    # 获取当前审核通过的所有信息

    recruitment_list = Recruitment.query.filter(Recruitment.status == 3).all()
    print(recruitment_list)
    # 传递至前台
    return render_template("browse/index.html", recruitment_list=recruitment_list)

#分页查询

@browse_BP.get('/data')
@authorize("user:browse")
def data():
    # 获取请求参数
    info = xss_escape(request.args.get('info', type=str))
    remark = xss_escape(request.args.get('remark', type=str))
    # 查询参数构造
    mf = ModelFilter()
    if info:
        mf.contains(field_name="info", value=info)
    if remark:
        mf.contains(field_name="remark", value=remark)
    # orm查询
    # 使用分页获取data需要.items
    #recruitment_ = Recruitment.query.filter(mf.get_filter(model=Recruitment)).layui_paginate()
    #只显示需要审核的数据
    recruitment_ = Recruitment.query.filter(Recruitment.status==3).layui_paginate()
    count = recruitment_.total
    # 返回api
    return table_api(data=model_to_dicts(schema=recruitmentOutSchema, data=recruitment_.items), count=count)

#招聘信息投递



#简历信息审核
@authorize("user:browse")
@browse_BP.get('/edit/<int:id>')
def edit(id):

    #传入的id为信息id
    recruitment_Update = curd.get_one_by_id(Recruitment, id)

    return render_template("browse/edit.html",recruitment_Update=recruitment_Update)



#  编辑信息
@authorize("user:browse")
@browse_BP.put('/update')
def update():
    req_json = request.json
    # 传入招聘信息id
    id = xss_escape(req_json.get("id"))
    #传入申请
    status=xss_escape(req_json.get("status"))

    if int(status)==1:
        return success_api(msg="取消申请")
    elif int(status)==2:
        #查询当前信息所属的企业
        recuritment = curd.get_one_by_id(Recruitment, id)

        user_id=current_user.id
        employ=Employ(user_id=user_id,enterprise_id=recuritment.user_id,status=1)
        db.session.add(employ)
        db.session.commit()
        return success_api(msg="申请成功")

#我的投递

#招聘信息查看

@browse_BP.get('/my')
@authorize("user:browse")
def my():
    # 获取当前审核通过的所有信息

    # 获取当前用户id
    user_id = current_user.id
    # 查询雇佣关系表
    employ_list = Employ.query.filter(Employ.user_id == user_id).all()

    # 传递至前台
    return render_template("browse/my.html", employ_list=employ_list)


#分页查询

@browse_BP.get('/mydata')
@authorize("user:browse")
def mydata():

    #获取当前用户id
    user_id =current_user.id
    #查询雇佣关系表
    employ_=Employ.query.filter(Employ.user_id==user_id).layui_paginate()

    count =employ_.total
    # 返回api
    return table_api(data=model_to_dicts(schema=employOutSchema, data=employ_.items), count=count)






