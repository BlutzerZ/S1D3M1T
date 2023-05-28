import time
#Untuk mengunduh fitur waktu agar terlihat waktu yang dipesan kapan dan 
#hubungannya atau secara otomatis akan muncul
#createdAt = db.Column(db.Integer, default=time.time()) # unix time format
from app import db
#Mengambil variabel db dari "app" dimana db merupakan sistem untuk menghubungkan python dengan data base
#sebenarnya

class Product(db.Model):
    #nama "product" adalah untuk nama file di local host
    #sedangkan db.model untuk membuat tabel dalam python
    id = db.Column(db.Integer, primary_key=True, index=True)
    #Otomatis muncul jika variable di bawah ini sduah diisi
    image = db.Column(db.String(200))
    #Nama variable bebas yang nanti akan dimasukkan dalam "Class"
    #db. merupakan kode untuk membuat database berupa "column" yang akan benar-benar menjadi column
    #string digunakan untuk input variable yang namanya berupa huruf, dan untuk batas limit nama yaitu 200 kata dnegan coding kurung ungu

    title = db.Column(db.String(100))
    desc = db.Column(db.String(300))
    category = db.Column(db.String(100))
    sizes = db.relationship('ProductSize', backref='transaction')
    colors = db.relationship('ProductColor', backref='transaction')
    #Relationship untuk menghubungkan agar tampilan produk pada web sidemit ada visual colornya

class ProductSize(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    productSize = db.Column(db.String(10))
    productSizePrice = db.Column(db.String(100))
    productID = db.Column(db.Integer, db.ForeignKey('product.id'), nullable=False)
    #di dalam kurung kuning ada db.integrar karena id berupa angka, dan integrar memang untuk angka
    #nullable untuk fitur agar dalam id di local host tidak kosong, jika kosong tidak akan berfungsi 
    #yang mengakibatkan tidak bisa disambungkan dengan relationship atau variable id dan atau foreignkey
    #ForeignKey coding untuk menyambungkan suatu yaitu "ProductSize" dengan "product.id" 
    
    
class ProductColor(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    productColorHex = db.Column(db.String(50))
    #variabel hex dapat karena salin warna melalui canva dan memang namanya "ProductColorHex"
    #jadi otomatis terinput dan tidak kami ganti 
    productColorName = db.Column(db.String(50))
    productID = db.Column(db.Integer, db.ForeignKey('product.id'), nullable=False)

class Transaction(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    name = db.Column(db.String(100))
    address = db.Column(db.String(200))
    phone = db.Column(db.Integer)
    #integrar adalah sebuah codingan untuk menginout nomo, jiak yang diinput bukan nomor
    #maka tidak bisa dan harus mencoba lagi
    total = db.Column(db.Integer)
    createdAt = db.Column(db.Integer, default=time.time()) # unix time format
    transactionItem = db.relationship('TransactionItem', backref='transaction')
    #Backref = Back referensi
    


class TransactionItem(db.Model):
    id = db.Column(db.Integer, primary_key=True, index=True)
    title = db.Column(db.String(100))
    color = db.Column(db.String(100))
    size = db.Column(db.String(100))
    price = db.Column(db.Integer)
    jumlah = db.Column(db.Integer)
    total = db.Column(db.Integer, default=price*jumlah)
    tid = db.Column(db.Integer, db.ForeignKey('transaction.id'), nullable=False)
    #tid= Transaction Id
    #Perbedaan antara relationship dengan id adalah. Relationship untuk ke bawah dan id untuk di atas
    #ForeignKey untuk syarat menggunakan "id"