
from applications.extensions import db
import datetime

class Employ(db.Model):
    __tablename__ = 'employ'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='ID')
    enterprise_id=db.Column(db.Integer,comment="企业id")
    user_id=db.Column(db.Integer,comment="用户id")

    info = db.Column(db.String(20), comment='信息')

    remark = db.Column(db.String(255), comment='备注')
    status = db.Column(db.Integer,comment="状态")
    result = db.Column(db.String(255),comment='反馈')
    create_at = db.Column(db.DateTime, default=datetime.datetime.now, comment='创建时间')
    update_at = db.Column(db.DateTime, default=datetime.datetime.now, onupdate=datetime.datetime.now, comment='修改时间')
