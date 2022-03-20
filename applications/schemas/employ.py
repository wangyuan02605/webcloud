
from applications.extensions import ma
from marshmallow import fields
class employOutSchema(ma.Schema):
    id = fields.Integer()
    enterprise_id = fields.Integer()
    user_id = fields.Str()
    info = fields.Str()
    remark = fields.Str()
    status = fields.Integer()
    result = fields.Str()
    create_at = fields.DateTime()
    update_at = fields.DateTime()