import mysql.connector
import os

config = {
  "host": "localhost",
  "user": "habibi",
  "password": "habi123",
  "db": "Akademik"
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
