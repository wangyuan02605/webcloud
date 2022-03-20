"""empty message

Revision ID: 2df60832b880
Revises: aefb1032c160
Create Date: 2022-03-17 22:58:38.388123

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '2df60832b880'
down_revision = 'aefb1032c160'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('employ',
    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False, comment='ID'),
    sa.Column('enterprise_id', sa.Integer(), nullable=True, comment='企业id'),
    sa.Column('user_id', sa.Integer(), nullable=True, comment='用户id'),
    sa.Column('info', sa.String(length=20), nullable=True, comment='信息'),
    sa.Column('remark', sa.String(length=255), nullable=True, comment='备注'),
    sa.Column('status', sa.Integer(), nullable=True, comment='状态'),
    sa.Column('create_at', sa.DateTime(), nullable=True, comment='创建时间'),
    sa.Column('update_at', sa.DateTime(), nullable=True, comment='修改时间'),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('employ')
    # ### end Alembic commands ###
