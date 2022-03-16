
from applications.extensions import db
import datetime

class Recruitment(db.Model):
    __tablename__ = 'recruitment'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='招聘信息ID')
    user_id=db.Column(db.Integer,comment="拥有者id")
    info = db.Column(db.String(20), comment='信息')
    status = db.Column(db.Integer,comment='状态',default=0)
    remark = db.Column(db.String(255), comment='备注')
    result = db.Column(db.String(255), comment='审核信息')
    create_at = db.Column(db.DateTime, default=datetime.datetime.now, comment='创建时间')
    update_at = db.Column(db.DateTime, default=datetime.datetime.now, onupdate=datetime.datetime.now, comment='创建时间')
