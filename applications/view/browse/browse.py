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

from applications.models import  AdminLog,Recruitment

from applications.schemas import recruitmentOutSchema

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







