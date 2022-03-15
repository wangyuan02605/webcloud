
from applications.extensions import db
import datetime

class Resume(db.Model):
    __tablename__ = 'resume'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='简历信息ID')
    user_id=db.Column(db.Integer,comment="拥有者id")
    info = db.Column(db.String(20), comment='信息')

    remark = db.Column(db.String(255), comment='备注')

    create_at = db.Column(db.DateTime, default=datetime.datetime.now, comment='创建时间')
    update_at = db.Column(db.DateTime, default=datetime.datetime.now, onupdate=datetime.datetime.now, comment='创建时间')
