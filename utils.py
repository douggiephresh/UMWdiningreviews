# utils.py
import MySQLUMWdiningDB.sql


DATABASE='UMWdining'
DB_USER = 'website'
DB_PASSWORD = 'umwdiningsecret'
HOST = 'localhost'

def db_connect():
  return MySQLdb.connect(HOST, DB_USER, DB_PASSWORD, DATABASE)
