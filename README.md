## UTS Pemrograman Berorientasi Objek

```bash
# Buat network baru
docker network create uts-pbo

# Build up container
docker-compose up -d

# Masuk ke MariaDB CLI
docker exec -it mariadb mariadb -u habibi -p

# Atau akses via phpmyadmin di browser
localhost:8080
```

### Backup Database
```shell
docker exec -it mariadb mysqldump -u habi -p --database akademik > ./database/Akademik_Backup.sql
```

### Run App
```shell

export FLASK_APP=main 
export FLASK_ENV=development

flask run -p 5001

flask --app example_app.py --debug run
```