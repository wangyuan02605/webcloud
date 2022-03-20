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

from applications.models import  AdminLog,Employ

from applications.schemas import employOutSchema

employ_BP = Blueprint('employ', __name__, url_prefix='/employ')

#投递信息审核

@employ_BP.get('/')
@authorize("user:employ")

def index():
    # 获取当前跟企业用户关联的所有审核的信息
    employ_list=Employ.query.filter(Employ.enterprise_id==current_user.id).all()
    # 传递至前台
    return render_template("employ/index.html", employ_list=employ_list)




#简历信息审核
@authorize("user:employ")

@employ_BP.get('/edit/<int:id>')
def edit(id):

    #传入的id为信息id
    employ_Update = curd.get_one_by_id(Employ, id)

    return render_template("employ/edit.html",employ_Update=employ_Update)



#  编辑信息
@employ_BP.put('/update')
@authorize("user:employ")
def update():
    req_json = request.json
    # 传入审核字段
    id = xss_escape(req_json.get("id"))
    status = xss_escape(req_json.get("status"))
    result = xss_escape(req_json.get("result"))
    Employ.query.filter_by(id=id).update({'status':status,'result':result})
    db.session.commit()
    return success_api(msg="更新成功")


#分页查询

@employ_BP.get('/data')
@authorize("user:employ")
def data():


    #只显示需要属于当前用户的数据
    employ_ = Employ.query.filter(Employ.enterprise_id==current_user.id).layui_paginate()

    count = employ_.total
    # 返回api
    return table_api(data=model_to_dicts(schema=employOutSchema, data=employ_.items), count=count)







