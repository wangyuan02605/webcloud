"""empty message

Revision ID: aefb1032c160
Revises: ec50923574e4
Create Date: 2022-03-16 16:27:33.377144

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'aefb1032c160'
down_revision = 'ec50923574e4'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('recruitment', sa.Column('status', sa.Integer(), nullable=True, comment='状态'))
    op.add_column('recruitment', sa.Column('result', sa.String(length=255), nullable=True, comment='审核信息'))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('recruitment', 'result')
    op.drop_column('recruitment', 'status')
    # ### end Alembic commands ###
