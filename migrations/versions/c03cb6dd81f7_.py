"""empty message

Revision ID: c03cb6dd81f7
Revises: 7634e028e338
Create Date: 2022-03-14 23:15:05.432481

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'c03cb6dd81f7'
down_revision = '7634e028e338'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('recruitment',
    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False, comment='招聘信息ID'),
    sa.Column('info', sa.String(length=20), nullable=True, comment='信息'),
    sa.Column('remark', sa.String(length=255), nullable=True, comment='备注'),
    sa.Column('create_at', sa.DateTime(), nullable=True, comment='创建时间'),
    sa.Column('update_at', sa.DateTime(), nullable=True, comment='创建时间'),
    sa.PrimaryKeyConstraint('id')
    )
    op.drop_constraint('admin_role_power_ibfk_1', 'admin_role_power', type_='foreignkey')
    op.drop_constraint('admin_role_power_ibfk_2', 'admin_role_power', type_='foreignkey')
    op.create_foreign_key(None, 'admin_role_power', 'admin_role', ['role_id'], ['id'])
    op.create_foreign_key(None, 'admin_role_power', 'admin_power', ['power_id'], ['id'])
    op.drop_constraint('admin_user_role_ibfk_1', 'admin_user_role', type_='foreignkey')
    op.drop_constraint('admin_user_role_ibfk_2', 'admin_user_role', type_='foreignkey')
    op.create_foreign_key(None, 'admin_user_role', 'admin_user', ['user_id'], ['id'])
    op.create_foreign_key(None, 'admin_user_role', 'admin_role', ['role_id'], ['id'])
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'admin_user_role', type_='foreignkey')
    op.drop_constraint(None, 'admin_user_role', type_='foreignkey')
    op.create_foreign_key('admin_user_role_ibfk_2', 'admin_user_role', 'admin_user', ['user_id'], ['id'], onupdate='RESTRICT', ondelete='RESTRICT')
    op.create_foreign_key('admin_user_role_ibfk_1', 'admin_user_role', 'admin_role', ['role_id'], ['id'], onupdate='RESTRICT', ondelete='RESTRICT')
    op.drop_constraint(None, 'admin_role_power', type_='foreignkey')
    op.drop_constraint(None, 'admin_role_power', type_='foreignkey')
    op.create_foreign_key('admin_role_power_ibfk_2', 'admin_role_power', 'admin_role', ['role_id'], ['id'], onupdate='RESTRICT', ondelete='RESTRICT')
    op.create_foreign_key('admin_role_power_ibfk_1', 'admin_role_power', 'admin_power', ['power_id'], ['id'], onupdate='RESTRICT', ondelete='RESTRICT')
    op.drop_table('recruitment')
    # ### end Alembic commands ###
