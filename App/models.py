import time
from app import db

class Product(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    image = db.Column(db.String(200))
    title = db.Column(db.String(100))
    desc = db.Column(db.String(300))
    sizes = db.relationship('ProductSize', backref='transaction')
    colors = db.relationship('ProductColor', backref='transaction')

class ProductSize(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    productSize = db.Column(db.String(10))
    productSizePrice = db.Column(db.String(100))
    productID = db.Column(db.Integer, db.ForeignKey('product.id'), nullable=False)

class ProductColor(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    productColorHex = db.Column(db.String(50))
    productColorName = db.Column(db.String(50))
    productID = db.Column(db.Integer, db.ForeignKey('product.id'), nullable=False)

class Transaction(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    name = db.Column(db.String(100))
    address = db.Column(db.String(200))
    phone = db.Column(db.Integer)
    total = db.Column(db.Integer)
    createdAt = db.Column(db.Integer, default=time.time()) # unix time format
    transactionItem = db.relationship('TransactionItem', backref='transaction')


class TransactionItem(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    title = db.Column(db.String(100))
    color = db.Column(db.String(100))
    size = db.Column(db.String(100))
    price = db.Column(db.Integer)
    jumlah = db.Column(db.Integer)
    total = db.Column(db.Integer, default=price*jumlah)
    tid = db.Column(db.Integer, db.ForeignKey('transaction.id'), nullable=False)