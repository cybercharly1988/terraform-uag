#!/bin/bash
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
yum install -y httpd
systemctl start httpd
systemctl enable httpd
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=80/tcp
firewall-cmd --add-port=22/tcp
firewall-cmd --add-port=22/tcp --permanent
instance_ip=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
cat << EOF > /var/www/html/index.html
<html>
    <index>
		<title>UAG - Multiservicios</title>
	</index>
    <body>
	    <h1>DEMO - Universidad Autonoma de Guadalajara</h1>
		<h2>Esto es una demostracion de como puede funcionar un despliegue total de una infraestructura </h2>
		<h3>Juan Carlos Perez Hernandez</h3>
        <h3>Saludos!</h3>
		<img src="https://seeklogo.com/images/U/Universidad_Autonoma_de_Guadalajara-logo-CDD690CCF6-seeklogo.com.png" ALIGN=BOTTOM/>
	</body>
</html>
EOF
echo $instance_ip >>/var/www/html/index.html