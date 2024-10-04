#!/bin/bash

package= "wget httpd unzip"
URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
DIR="/tmp/webfiles"

sudo yum install $package -y > /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd

mkdir -p $DIR
cd $DIR

wget $URL > /dev/null
unzip -o 2135_mini_finance.zip  > /dev/null

sudo cp -r 2135_mini_finance/* /var/www/html/
sudo systemctl restart httpd

cd /tmp
sudo rm -rf $DIR

sudo systemctl status httpd

