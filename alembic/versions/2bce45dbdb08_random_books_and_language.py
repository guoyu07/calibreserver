"""random books and language

Revision ID: 2bce45dbdb08
Revises: 23d2457e5d11
Create Date: 2014-07-01 22:50:48.647500

"""

# revision identifiers, used by Alembic.
revision = '2bce45dbdb08'
down_revision = '23d2457e5d11'

from alembic import op
import sqlalchemy as sa


def upgrade():
    ### commands auto generated by Alembic - please adjust! ###
    op.add_column('user', sa.Column('default_language', sa.String(length=3), nullable=True))
    op.add_column('user', sa.Column('random_books', sa.Integer(), nullable=True))
    ### end Alembic commands ###


def downgrade():
    ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('user', 'random_books')
    op.drop_column('user', 'default_language')
    ### end Alembic commands ###