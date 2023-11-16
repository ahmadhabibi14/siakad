import mysql.connector
import os

config = {
  "host": os.getenv("MARIADB_HOST"),
  "user": os.getenv("MARIADB_USER"),
  "password": os.getenv("MARIADB_PASSWORD"),
  "db": os.getenv("MARIADB_DATABASE"),
}

class Database:
  def __init__(self):
    self.connection = self.connect()

  def connect(self):
    cnx = mysql.connector.connect(**config)
    if cnx.is_connected():
      return cnx
    
  def queryMany(self, query):
    cursor = self.connection.cursor()
    cursor.execute(query)
    row_headers=[x[0] for x in cursor.description]
    rv = cursor.fetchall()
    data = []
    for result in rv:
      data.append(dict(zip(row_headers, result)))
    return data
