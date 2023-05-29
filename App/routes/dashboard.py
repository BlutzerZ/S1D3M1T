from app import app, db
from models import Product as ProductModels, ProductColor as ProductColorModels, ProductSize as ProductSizeModels, ProductStock as ProductStockModels, Transaction as OrderModels, TransactionItem as OrderItemModels
from flask import render_template, request, session, redirect, abort, url_for, render_template
import time, os, random
from pytz import timezone
from datetime import datetime
from werkzeug.utils import secure_filename

# Admin Routes ==================================

@app.route("/login", methods=['GET', 'POST'])
#untuk membuat jalur url dengan judul "/login" metodenya 
#get--------------untuk mendapatkan apa yang kita mau yaiut login
#post------------fungsi agar user menginput data yang kita inginkan
#apa yang diisi

def admin_login_form():
# untuk memerintahkan sistem agar mengisi yang dibawah ini
    if request.method == 'POST':
        #nah fungsinya dipakai disini
        email = request.form['email']
        pwd = request.form['pwd']
        # email dan pws
        if email == 'ridwaniko09@gmail.com' and pwd == 'SIDEMIT ADMIN':
            #yang sudah ki=ita tentukam
            session['user'] = 'admin'
            #jka benar user akan menajdi admin
            print("login sucess")
            return redirect(url_for('admin_dashboard'))
        #nah jika benar akan diarahkan alamat tampilan isi url
        # yang url nya '/dashboard'
        
    return render_template('login.html')
#kalau salah dia akan kembali lagi ke login html

@app.route("/logout")
#nama url
def admin_logout():
#kode untuk membuat logut bagi admin
    session.pop('user', None)
    #jika salag akan tetap menjadi user daan (pop)
    return redirect(url_for('show_all_product'))
    #diarahkan ke 'show all product'


@app.route("/dashboard")
#Kenapa ini menggunakan @app.route karena ini untuk membuat jalur dalam url yang nanti bisa ditulis /dashboard
# CONTOH 
def admin_dashboard():
    if session['user'] != 'admin':
    #kalau misal bukan admin dia akan kembali
        return redirect(url_for('admin_login_form'))
    #ke logon
    return  render_template('dashboard.html')
    # jika tidak itu, maka akan menampilkan dashboard.html

@app.route("/dashboard/product")
def dashboard_product():
    if session['user'] != 'admin':
    #sama
        return redirect(url_for('admin_login_form'))
    #sama
    products = ProductModels.query.all()
    return  render_template('dashboardproduct.html', products=products)
#sama

@app.route("/dashboard/hpp")
#judul
def dashboard_hpp():
#sama
    if session['user'] != 'admin':
    #sama
        return redirect(url_for('admin_login_form'))
    #diarahkan ke admin login lagi
    return  render_template('dashboardhpp.html', hpp=session['hpp']) 
    #variabel hpp ini sebenernya akan dipanggil di bagian pendpatan
    #tapi belum di kita buat

@app.route("/dashboard/add-hpp", methods=['POST'])
def admin_dashboard_add_hpp():
    if session['user'] != 'admin':
        return redirect(url_for('admin_login_form'))
    biayaBahanPokok = request.form['fbahanpokok'] # Biaya Bahan pokok
    biayaOperasional = request.form['fbiayaoperasional'] # Biaya Operasional
    biayaPengemasan = request.form['fbiayapengemasan'] # Biaya Pengemasan
    jumlahProduct = request.form['fjumlahproduk']
    totalBiaya = int((float(biayaBahanPokok) + float(biayaOperasional) + float(biayaPengemasan)) / int(jumlahProduct))
    #float untuk tambahan agar jika user mengguanakan angka titik atau desimal
    print(totalBiaya)
    session['hpp'] = totalBiaya
    #pemanggilan
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


@app.route("/inputer/product", methods=["POST"])
def inputer_product():
    fimage = request.form['fimage']

    productName = request.form['fproductname']
    productDesc = request.form['fproductdesc']
    
    db_item = ProductModels(
        title=productName,
        image=fimage,
        desc=productDesc,
    )
    db.session.add(db_item)
    db.session.commit()
    db.session.refresh(db_item)

    return "ok"

@app.route("/inputer/color", methods=["POST"])
def inputer_product_color():
    fproductID = request.form['fproductID']
    fproductColorName = request.form['fproductColorName']
    fproductColorHex = request.form['fproductColorHex']
    
    for pc in fproductID.split(","):
        db_item = ProductColorModels(
            productID=pc,
            productColorName=fproductColorName,
            productColorHex=fproductColorHex,
        )
        db.session.add(db_item)
    db.session.commit()
    db.session.refresh(db_item)

    return "ok"

@app.route("/inputer/size", methods=["POST"])
def inputer_product_size():
    fproductID = request.form['fproductID']
    fproductSize = request.form['fproductSize']
    fproductSizePrice = request.form['fproductSizePrice']

    for ps in fproductSize.split(","):
    
        db_item = ProductSizeModels(
            productID=fproductID,
            productSize=ps,
            productSizePrice=fproductSizePrice,
        )
        db.session.add(db_item)
    db.session.commit()
    db.session.refresh(db_item)

    return "ok"

@app.route("/inputer/test")
def inputer_product_test():
    products = ProductModels.query.all()
    for p in products:
        for c in p.colors:
            print(c.productColorHex)
            print(c.productColorName)


    return "ok"
