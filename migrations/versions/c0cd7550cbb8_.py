"""empty message

Revision ID: c0cd7550cbb8
Revises: 2df60832b880
Create Date: 2022-03-18 21:12:36.072707

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'c0cd7550cbb8'
down_revision = '2df60832b880'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('employ', sa.Column('result', sa.String(length=255), nullable=True, comment='反馈'))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('employ', 'result')
    # ### end Alembic commands ###
