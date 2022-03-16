
from applications.extensions import ma
from marshmallow import fields
class recruitmentOutSchema(ma.Schema):
    id = fields.Integer()
    info = fields.Str()
    remark = fields.Str()
    status = fields.Integer()
    result = fields.Str()
    create_at = fields.DateTime()
    update_at = fields.DateTime()