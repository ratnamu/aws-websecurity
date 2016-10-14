cd /etc/pki/tls/
openssl genrsa -des3 -passout pass:x -out server.pass.key 2048
openssl rsa -passin pass:x -in server.pass.key -out server.key
rm server.pass.key
openssl req -new -key server.key -out server.csr \
  -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com"
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
ls server.key server.crt
if [[ $? -eq 0 ]]
then
        echo "SSL keys generated"
else
        echo "ERROR:SSL Keys not generated"
fi

cat ssl_configuration >> /etc/httpd/conf/httpd.conf
