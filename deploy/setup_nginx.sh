
sudo apt install nginx
echo '
server {
  listen 80;
  server_name sys-akademik www.sys-akademik.xyz;

  location / {
    include proxy_params;
    proxy_pass http://unix:/root/sys-akademik/sys-akademik.sock;
  }
' | sudo tee /etc/nginx/sites-available/sys-akademik
sudo ln -s /etc/nginx/sites-available/sys-akademik /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx