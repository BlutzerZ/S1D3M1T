from app import app, db
from models import Product as ProductModels, Order as OrderModels, OrderItem as OrderItemModels
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
    db_items = db.session.query(ProductModels).all()
    return render_template('product.html', products=db_items)

@app.route("/product/<int:post_id>")
def show_product_by_id(post_id):
    return f'Post {post_id}'


# Admin Routes ==================================

@app.route("/login", methods=['GET', 'POST'])
def admin_login_form():
    if request.method == 'POST':
        email = request.form['email']
        pwd = request.form['pwd']
        if email == 'admin' and pwd == 'admin':
            session['user'] = 'admin'
            print("login sucess")
            return redirect(url_for('admin_dashboard'))
    return render_template('login.html')


@app.route("/logout")
def admin_logout():
    session.pop('user', None)
    return redirect(url_for('show_all_product'))


@app.route("/dashboard")
def admin_dashboard():
    if session['user'] != 'admin':
        return redirect(url_for('admin_login_form'))

    db_items = db.session.query(ProductModels).all()

    return  render_template('dashboard.html', products=db_items, hpp=session['hpp'])

@app.route("/dashboard/add-hpp", methods=['POST'])
def admin_dashboard_add_hpp():
    if session['user'] != 'admin':
        return redirect(url_for('admin_login_form'))

    biayaBahanPokok = request.form['bp'] # Biaya Bahan pokok
    biayaOperasional = request.form['bo'] # Biaya Operasional
    biayaPengemasan = request.form['bpeng'] # Biaya Pengemasan
    jumlahProduct = request.form['jmlh']
    totalBiaya = int(int(biayaBahanPokok) + int(biayaOperasional) + int(biayaPengemasan) / int(jumlahProduct))
    print(totalBiaya)
    session['hpp'] = totalBiaya

    return  redirect(url_for('admin_dashboard'))

# Transaction =====================================

@app.route("/transaction")
def trasaction():
    transactions = db.session.query(OrderModels).join(OrderItemModels).group_by(OrderModels.id).order_by(db.func.count().desc()).all()
    
    # convert time
    for transaction in transactions:
        utc_time = datetime.utcfromtimestamp(transaction.createdAt)
        print("utc time: ", utc_time)
        jakarta_time = timezone('Asia/Jakarta').localize(utc_time)
        print("jakarta time: ", jakarta_time)
        transaction.createdAt = jakarta_time.strftime('%d %b %Y')
        
    return render_template("trasaction.html", transactions=transactions)

