from flask import Flask
from config import Config
from flask_sqlalchemy import SQLAlchemy
from dotenv import load_dotenv
import os

print(os.getenv('MYSQL_HOST'))

app = Flask(__name__)
def _enumerate(iterable):
    return enumerate(iterable)

app.jinja_env.globals.update(_enumerate=_enumerate)

app.config.from_object(Config)
from flask_migrate import Migrate
from config import Config

db = SQLAlchemy(app)
migrate = Migrate(app, db)

app.secret_key = os.getenv('SECRET_KEY')
app.config['UPLOAD_FOLDER'] = '/image'

from routes.customer import * #import * = semuanya yang ada di souters.customer diimpoert ke app.py
#routes.customer artinya jalur customer ------ semuanya diimport
from routes.dashboard import *

#Ini adalah route, route digunakan untuk mengedit isi tampilan web di bagian dashbord