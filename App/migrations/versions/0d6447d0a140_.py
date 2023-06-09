"""empty message

Revision ID: 0d6447d0a140
Revises: 
Create Date: 2023-05-29 15:58:50.110764

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '0d6447d0a140'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('product_stock',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('productTotalStock', sa.String(length=50), nullable=True),
    sa.Column('productID', sa.Integer(), nullable=False),
    sa.ForeignKeyConstraint(['productID'], ['product.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    with op.batch_alter_table('product_stock', schema=None) as batch_op:
        batch_op.create_index(batch_op.f('ix_product_stock_id'), ['id'], unique=False)

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('product_stock', schema=None) as batch_op:
        batch_op.drop_index(batch_op.f('ix_product_stock_id'))

    op.drop_table('product_stock')
    # ### end Alembic commands ###
