from flask import Flask, render_template, request, jsonify
from database import Database

app = Flask(__name__)
# Web Views
@app.route('/', methods = ['GET'])
def index():
  dataMahasiswa = []
  if request.method == 'GET':
    try:
      Db = Database()
      dataMahasiswa = Db.queryMany("SELECT * FROM Mahasiswa")
    except Exception as e:
      dataMahasiswa = []
      return render_template('index.html', daftar_mahasiswa=dataMahasiswa, error=str(e))
    finally:
      Db.connection.close()
    return render_template('index.html', daftar_mahasiswa=dataMahasiswa)
  else:
    dataMahasiswa = []
    return render_template('index.html', daftar_mahasiswa=dataMahasiswa, error=str(e))
  
@app.route('/mahasiswa', methods = ['GET'])
def mahasiswa():
  dataMahasiswa = []
  if request.method == 'GET':
    try:
      Db = Database()
      dataMahasiswa = Db.queryMany("SELECT * FROM Mahasiswa")
    except Exception as e:
      dataMahasiswa = []
      return render_template('mahasiswa.html', daftar_mahasiswa=dataMahasiswa, error=str(e))
    finally:
      Db.connection.close()
    return render_template('mahasiswa.html', daftar_mahasiswa=dataMahasiswa)
  else:
    dataMahasiswa = []
    return render_template('mahasiswa.html', daftar_mahasiswa=dataMahasiswa, error=str(e))
  
@app.errorhandler(404) 
def not_found(e): 
  return render_template("404.html") 

# API Routes
@app.route('/api/daftar-mahasiswa', methods = ['POST'])
def daftar_mahasiswa():
  if request.method == 'POST':
    try:
      Db = Database()
      dataMahasiswa = Db.queryMany("SELECT * FROM Mahasiswa")
      dataMahasiswa_json = jsonify(
        {
          'success': True,
          'mahasiswa': dataMahasiswa
        }
      )
      return dataMahasiswa_json
    except Exception as e:
      return jsonify({'error': str(e)})
    finally:
      Db.connection.close()
