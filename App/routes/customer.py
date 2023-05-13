from app import app, db
from models import Product as ProductModels, ProductColor as ProductColorModels, ProductSize as ProductSizeModels, Transaction as OrderModels, TransactionItem as OrderItemModels
from flask import render_template, request, session, redirect, abort, url_for, render_template
import time, os, random
from pytz import timezone
from datetime import datetime
from werkzeug.utils import secure_filename

@app.before_request
def before_request():
    session.setdefault('user', None)
    session.setdefault('hpp', 0)


# Product routes ===============================

@app.route("/")
def show_all_product():
    products = ProductModels.query.all()

    return render_template('product.html', products=products)

# CART ROUTES ====================================

@app.route("/keranjang")
def cart():
    items = session.get('keranjang', [])
    return render_template('keranjang.html', items=items)

@app.route("/add-to-cart", methods=["POST"])
def add_to_cart():
    cart = session.get('keranjang', [])
    cart.append({
        "id": request.form['fid'],
        "img": request.form['fimg'],
        "title": request.form['ftitle'],
        "warna": request.form['fwarna'], # add me
        "size": request.form['fsize'], # add me
        "jumlah": request.form['fjumlah'],
        "harga": request.form['fharga'],
        "total": int(request.form['fjumlah']) * int(request.form['fharga']),
    })
    session['keranjang'] = cart
    print(session['keranjang'])
    # return "success"
    return redirect(url_for('show_all_product'))

@app.route("/delete-cart-all/")
def delete_cart_all():
    session.pop('keranjang', None)
    return redirect(url_for('show_all_product'))

@app.route("/delete-cart/<int:item_id>", methods=["POST"])
def delete_cart(item_id):
    for i, item in enumerate(session.get('keranjang', [])):
        if int(item['id']) == item_id:
            print("found")
            cart = session.get('keranjang', [])
            cart.pop(i)
            session['keranjang'] = cart
            break
    return redirect(url_for('cart'))



# Checkout =======================================

@app.route("/checkout", methods=["GET", "POST"])
def checkout():
    if request.method == "POST":
        total = int(request.form['ftotal'])
        return render_template('co.html', total=total)

    else:
        return "<p>Nothing here</p>"

@app.route("/checkout/success", methods=["POST"])
def checkout_success():
        fname = request.form['fname']
        faddress = request.form['faddress']
        fphone = request.form['fphone']
        ftotal = request.form['ftotal']
        while True:
            randomID = random.randint(0, 99999999)
            dummyCheck = db.session.query(OrderModels).filter(OrderModels.id == randomID).first()
            if dummyCheck is None:
                db_item = OrderModels(
                    id=randomID,
                    name=fname,
                    address=faddress,
                    phone=fphone,
                    total=ftotal
                )
                db.session.add(db_item)
                db.session.commit()
                db.session.refresh(db_item)
                break

        carts = session.get('keranjang', [])
        for cart in carts:
            db_item = OrderItemModels(
                title=cart['title'],
                color=cart['warna'],
                size=cart['size'],
                price=cart['harga'],
                jumlah=cart['jumlah'],
                total=cart['total'],
                tid=randomID
            )

            db.session.add(db_item)
        db.session.commit()
        db.session.refresh(db_item)

        session.pop('keranjang', None)
        return 'success'
        # return redirect(url_for('show_all_product'))