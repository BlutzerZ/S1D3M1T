import os
#digunakan untuk menghubungkan env agar berfungsi
from dotenv import load_dotenv
load_dotenv()


class Config:
    SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{os.getenv('MYSQL_USER')}:{os.getenv('MYSQL_PASSWORD')}@{os.getenv('MYSQL_HOST')}:{os.getenv('MYSQL_PORT')}/{os.getenv('MYSQL_DBNAME')}"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    
#sama-sama negbuat link tapi hanya untuk panggilan di app.py