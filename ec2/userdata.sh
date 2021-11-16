 #!/bin/bash
yum update -y
#amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
#yum install -y httpd mariadb-server
yum install -y httpd
systemctl start httpd
systemctl enable httpd
#usermod -a -G apache ec2-user
#chown -R ec2-user:apache /var/www
#chmod 2775 /var/www
#find /var/www -type d -exec chmod 2775 {} \;

echo "Hello from $(hostname -f)" > /var/www/html/index.html
#sudo yum install nginx