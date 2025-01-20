#! /bin/bash

sudo yum update -y
sudo yum install -y httpd
sudo sytemctl enable httpd
sudo service httpd start
echo "<h1>Welcome to apache</h1>" | sudo tee /var/www/html/index.html
