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

from applications.models import  AdminLog,Recruitment,Employ

from applications.schemas import recruitmentOutSchema

manage_BP = Blueprint('manage', __name__, url_prefix='/manage')

#招聘信息审核

@manage_BP.get('/')
@authorize("admin:manage:info")

def index():
    # 获取当前需要审核的所有信息

    recruitment_list = Recruitment.query.filter(Recruitment.status == 1).all()
    print(recruitment_list)
    # 传递至前台
    return render_template("manage/index.html", recruitment_list=recruitment_list)


@manage_BP.get('/postresume')

def post_resume():
    #获得当前用户创建需要审核的雇佣关系
    pass


#招聘信息修改
@authorize("admin:manage:info")

@manage_BP.get('/edit/<int:id>')
def edit(id):

    #传入的id为信息id
    recruitment_Update = curd.get_one_by_id(Recruitment, id)

    return render_template("manage/edit.html",recruitment_Update=recruitment_Update)



#  编辑信息
@manage_BP.put('/update')
@authorize("admin:manage:info")
def update():

    req_json = request.json
    # 传入审核字段
    id = xss_escape(req_json.get("id"))
    status = xss_escape(req_json.get("status"))
    result = xss_escape(req_json.get("result"))
    Recruitment.query.filter_by(id=id).update({'status':status,'result':result})
    db.session.commit()
    return success_api(msg="更新成功")


#分页查询

@manage_BP.get('/data')
@authorize("admin:manage:info")
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
    recruitment_ = Recruitment.query.filter(Recruitment.status==1).layui_paginate()

    count = recruitment_.total
    # 返回api
    return table_api(data=model_to_dicts(schema=recruitmentOutSchema, data=recruitment_.items), count=count)







