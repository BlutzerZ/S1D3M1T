from app import app, db
from models import Transaction as OrderModels, TransactionItem as OrderItemModels
from flask import render_template, request, session, redirect, abort, url_for, render_template
import time, os, random
from pytz import timezone
from datetime import datetime
from werkzeug.utils import secure_filename

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

    return  render_template('dashboard.html')

@app.route("/dashboard/product")
def dashboard_product():
    if session['user'] != 'admin':
        return redirect(url_for('admin_login_form'))

    return  render_template('dashboardproduct.html')

@app.route("/dashboard/hpp")
def dashboard_hpp():
    if session['user'] != 'admin':
        return redirect(url_for('admin_login_form'))
    return  render_template('dashboardhpp.html', hpp=session['hpp'])

@app.route("/dashboard/add-hpp", methods=['POST'])
def admin_dashboard_add_hpp():
    if session['user'] != 'admin':
        return redirect(url_for('admin_login_form'))
    biayaBahanPokok = request.form['fbahanpokok'] # Biaya Bahan pokok
    biayaOperasional = request.form['fbiayaoperasional'] # Biaya Operasional
    biayaPengemasan = request.form['fbiayapengemasan'] # Biaya Pengemasan
    jumlahProduct = request.form['fjumlahproduk']
    totalBiaya = int((float(biayaBahanPokok) + float(biayaOperasional) + float(biayaPengemasan)) / int(jumlahProduct))
    print(totalBiaya)
    session['hpp'] = totalBiaya

    return  redirect(url_for('dashboard_hpp'))
    
@app.route("/dashboard/transaction")
def dashboard_transaction():
    transactions = db.session.query(OrderModels).join(OrderItemModels).group_by(OrderModels.id).order_by(db.func.count().desc()).all()
    
    # convert time
    for transaction in transactions:
        utc_time = datetime.utcfromtimestamp(transaction.createdAt)
        jakarta_time = timezone('Asia/Jakarta').localize(utc_time)
        transaction.createdAt = jakarta_time.strftime('%d %b %Y')


    return render_template("dashboardtransaction.html", transactions=transactions)


# @app.route("/dashboard/add-product", methods=["POST"])
# def admin_dashboard_add_product():
#     if session['user'] != 'admin':
#         return redirect(url_for('admin_login_form'))

    
#     f = request.files['fimg']
#     filename = secure_filename(f.filename)
#     f.save(os.path.join('static', 'upload', 'images', filename))
    

#     title = request.form['ftitle']
#     hModal = request.form['fmodal']
#     hJual = request.form['fjual']
#     desc = request.form['fdesc']
#     stock = request.form['fstock']

#     db_item = ProductModels(
#         title=title,
#         image=filename,
#         price1=hModal,
#         price2=hJual,
#         desc=desc,
#         stock=stock,
#     )
#     db.session.add(db_item)
#     db.session.commit()
#     db.session.refresh(db_item)
#     return redirect(url_for('admin_dashboard'))

# @app.route("/dashboard/add-color", methods=["POST"])
# def admin_dashboard_add_color():
#     if session['user'] != 'admin':
#         return redirect(url_for('admin_login_form'))
    
#     cHex = request.form['fchex']
#     cName = request.form['fcname']

#     db_item = ProductModels(
#         colorHex=cHex,
#         colorName=cName,
#     )
#     db.session.add(db_item)
#     db.session.commit()
#     db.session.refresh(db_item)
#     return redirect(url_for('admin_dashboard'))


# @app.route("/dashboard/edit-product/<int:product_id>", methods=["POST"])
# def admin_dashboard_edit_product(product_id):
#     if session['user'] != 'admin':
#         return redirect(url_for('admin_login_form'))
    
#     db_item = db.session.query(ProductModels).filter(ProductModels.id == product_id).first()
#     if db_item is None:
#         raise "<p>Error Product Not Found</p>"
    
#     f = request.files['fimg']
#     filename = secure_filename(f.filename)
#     print(filename)
#     if filename != "":
#         f.save(os.path.join('static', 'upload', 'images', filename))
#         db_item.image = filename

#     db_item.title = request.form['ftitle']
#     db_item.price1 = request.form['fmodal']
#     db_item.price2 = request.form['fjual']
#     db_item.desc = request.form['fdesc']
#     db_item.stock = request.form['fstock']
#     db_item.updateAt = time.time()
#     db.session.commit()
#     db.session.refresh(db_item)
#     return redirect(url_for('admin_dashboard'))


# @app.route("/dashboard/delete-product/<int:product_id>", methods=["POST"])
# def admin_dashboard_delete_product(product_id):
#     db_item = db.session.query(ProductModels).filter(ProductModels.id == product_id).first()
#     if db_item is None:
#         return f"<p>Item not found with id {product_id}</p>"
#     db.session.delete(db_item)
#     db.session.commit()
#     return redirect(url_for('admin_dashboard'))


# Transaction =====================================

