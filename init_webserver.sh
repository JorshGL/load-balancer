#!/bin/bash

echo "Installing packages..."
sudo apt update
sudo apt install python3-dev default-libmysqlclient-dev build-essential pkg-config mysql-client python3-pip apache2 -y
pip3 install Flask==2.3.3
pip3 install flask-cors
pip3 install Flask-MySQLdb
pip install Flask-SQLAlchemy

echo "Configuring webserver..."
cp -r /home/vagrant/webserver-conf/webapp /var/www
cp /home/vagrant/webserver-conf/apache2/000-default.conf /etc/apache2/sites-available
apt install libapache2-mod-wsgi-py3 -y
a2enmod wsgi
cd /etc/apache2/sites-available
a2ensite 000-default.conf
systemctl restart apache2