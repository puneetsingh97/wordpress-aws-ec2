# wordpress-aws-ec2
wordpress-aws-ec2

<p>&nbsp;</p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">Connect to server using SSH and run below commands
using sudo.<br />
</span></u></b>$ sudo apt update<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">$ sudo apt
install apache2<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 12.0pt; mso-bidi-font-size: 16.0pt;"><o:p><span style="text-decoration: none;">&nbsp;</span></o:p></span></u></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">INSTALL DATABASE<o:p></o:p></span></u></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">$ sudo apt
install mysql-server<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">$ sudo
mysql_secure_installation<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Securing the
MySQL server deployment.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Connecting to
MySQL using a blank password.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">VALIDATE
PASSWORD COMPONENT can be used to test passwords<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">and improve
security. It checks the strength of password<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">and allows the
users to set only those passwords which are<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">secure enough.
Would you like to setup VALIDATE PASSWORD component?<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Press y|Y for
Yes, any other key for No: y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">There are three
levels of password validation policy:<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">LOW<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp; </span>Length &gt;= 8<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">MEDIUM Length
&gt;= 8, numeric, mixed case, and special characters<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">STRONG Length
&gt;= 8, numeric, mixed case, special characters and dictionary<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>file<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Please enter 0
= LOW, 1 = MEDIUM and 2 = STRONG: 1<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Skipping
password set for root as authentication with auth_socket is used by default.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">If you would
like to use password authentication instead, this can be done with the
"ALTER_USER" command.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">See
https://dev.mysql.com/doc/refman/8.0/en/alter-user.html#alter-user-password-management
for more information.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">By default, a
MySQL installation has an anonymous user,<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">allowing anyone
to log into MySQL without having to have<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">a user account
created for them. This is intended only for<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">testing, and to
make the installation go a bit smoother.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">You should
remove them before moving into a production<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">environment.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Remove
anonymous users? (Press y|Y for Yes, any other key for No) : y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Success.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Normally, root
should only be allowed to connect from<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">'localhost'.
This ensures that someone cannot guess at<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">the root
password from the network.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Disallow root
login remotely? (Press y|Y for Yes, any other key for No) : y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Success.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">By default,
MySQL comes with a database named 'test' that<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">anyone can
access. This is also intended only for testing,<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">and should be
removed before moving into a production<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">environment.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Remove test
database and access to it? (Press y|Y for Yes, any other key for No) : y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><span style="mso-spacerun: yes;">&nbsp;</span>- Dropping test database...<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Success.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><span style="mso-spacerun: yes;">&nbsp;</span>- Removing privileges on test database...<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Success.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Reloading the
privilege tables will ensure that all changes<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">made so far
will take effect immediately.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Reload
privilege tables now? (Press y|Y for Yes, any other key for No) : y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Success.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">All done!<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">SET PASSWORD FOR DATABASE ROOT</span></u></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; ALTER
USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY <span style="background: yellow; mso-highlight: yellow;">'Puneet@123'</span>;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Query OK, 0
rows affected (0.01 sec)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; exit<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Bye<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ubuntu@ip-172-31-37-83:~$
mysql -u root -p<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Enter password:
xxxxxxxxxx<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Welcome to the
MySQL monitor.<span style="mso-spacerun: yes;">&nbsp; </span>Commands end with ; or
\g.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Your MySQL
connection id is 15<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Server version:
8.0.35-0ubuntu0.22.04.1 (Ubuntu)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Copyright (c)
2000, 2023, Oracle and/or its affiliates.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Oracle is a
registered trademark of Oracle Corporation and/or its<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">affiliates.
Other names may be trademarks of their respective<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">owners.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Type 'help;' or
'\h' for help. Type '\c' to clear the current input statement.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; exit<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Bye<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ubuntu@ip-172-31-37-83:~$<br style="mso-special-character: line-break;" /></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ubuntu@ip-172-31-37-83:~$
mysql -u root -p<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Enter password:<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Welcome to the
MySQL monitor.<span style="mso-spacerun: yes;">&nbsp; </span>Commands end with ; or
\g.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Your MySQL
connection id is 16<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Server version:
8.0.35-0ubuntu0.22.04.1 (Ubuntu)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Copyright (c)
2000, 2023, Oracle and/or its affiliates.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Oracle is a
registered trademark of Oracle Corporation and/or its<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">affiliates.
Other names may be trademarks of their respective<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">owners.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Type 'help;' or
'\h' for help. Type '\c' to clear the current input statement.<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt;
CREATE DATABASE wp_database DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Query OK, 1 row
affected, 2 warnings (0.01 sec)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; show
databases;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">+--------------------+<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">| Database<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>|<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">+--------------------+<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">|
information_schema |<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">| mysql<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>|<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">|
performance_schema |<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">| sys<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>|<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">|
wp_database<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>|<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">+--------------------+<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">5 rows in set
(0.00 sec)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt;
CREATE USER 'wp_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Puneet@123';<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Query OK, 0
rows affected (0.01 sec)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; GRANT
ALL ON wp_database.* TO 'wp_user'@'%';<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Query OK, 0
rows affected (0.00 sec)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; FLUSH
PRIVILEGES;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Query OK, 0
rows affected (0.00 sec)<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mysql&gt; EXIT;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">Bye<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ubuntu@ip-172-31-37-83:~$<o:p></o:p></p>

<br clear="all" style="mso-special-character: line-break; page-break-before: always;" />

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">INSTALL PHP<o:p></o:p></span></u></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo apt update<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo apt
install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl
php-zip -y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo apt
install php libapache2-mod-php php-mysql -y<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">CREATING A VIRTUAL HOST<o:p></o:p></span></u></b></p>

<p align="right" class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; text-align: right;">sudo mkdir /var/www/puneet<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo chown -R
$USER:$USER /var/www/puneet<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo vi
/etc/apache2/sites-available/puneet.conf<o:p></o:p></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><br /></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><span style="mso-spacerun: yes;">&nbsp;</span><b>&lt;VirtualHost *:80&gt;<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>ServerName puneet.com<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>ServerAlias www.puneet.com<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>ServerAdmin webmaster@localhost<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>DocumentRoot /var/www/puneet<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>ErrorLog ${APACHE_LOG_DIR}/error.log<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>CustomLog ${APACHE_LOG_DIR}/access.log combined<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm; margin-left: 72.0pt; margin-right: 0cm; margin-top: 0cm;"><b>&lt;/VirtualHost&gt;</b><o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo cat
/etc/apache2/sites-available/puneet.conf<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo a2ensite puneet.conf<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo a2dissite
000-default<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo systemctl
reload apache2<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo apache2ctl
configtest<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo systemctl
reload apache2<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">vi /var/www/puneet/index.html<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&lt;html&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &lt;head&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &nbsp; &lt;title&gt;Puneet Website is here&lt;/title&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &lt;/head&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &lt;body&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &nbsp; &lt;h1&gt;Hello Members&lt;/h1&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &nbsp; &lt;p&gt;This is the landing page of &lt;strong&gt;puneet.com&lt;/strong&gt;.&lt;/p&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&nbsp; &lt;/body&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>&lt;/html&gt;</b></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><br /></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo vi
/etc/apache2/mods-enabled/dir.conf</p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo systemctl
reload apache2<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">vi /var/www/puneet/info.php<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo rm
/var/www/puneet/info.php<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo vi
/etc/apache2/sites-available/puneet.conf<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo a2enmod
rewrite<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo apache2ctl
configtest<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo systemctl
restart apache2<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">INSTALL WORDPRESS</span></u></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">cd /tmp<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">curl -O
https://wordpress.org/latest.tar.gz<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">tar xzvf
latest.tar.gz<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ls<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ls wordpress/<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">touch
/tmp/wordpress/.htaccess<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">cp
/tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">mkdir
/tmp/wordpress/wp-content/upgrade<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo cp -a
/tmp/wordpress/. /var/www/puneet<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo chown -R
www-data:www-data /var/www/puneet<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo find
/var/www/puneet/ -type d -exec chmod 750 {} \;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">sudo find
/var/www/puneet/ -type f -exec chmod 640 {} \;<o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><u><span style="font-size: 14.0pt;">Setting Up the WordPress Configuration File<o:p></o:p></span></u></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">ubuntu@ip-172-31-37-83:/tmp$
curl -s <a href="https://api.wordpress.org/secret-key/1.1/salt/">https://api.wordpress.org/secret-key/1.1/salt/</a><o:p></o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<div style="border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; mso-element: para-border-div; padding: 1.0pt 4.0pt 1.0pt 4.0pt;">

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('AUTH_KEY',<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>'JIYk+&gt;% Z+8$lPHz}wKq&amp;kz#.q,OV~
7%?m,yz9%XKPNSW}(296hvCke+chi|[b]');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('SECURE_AUTH_KEY',<span style="mso-spacerun: yes;">&nbsp;
</span>']RT2=jp_R&gt;4$D5T[T8]}lb;$1npfic6KqAyRw+U-;H~}X$S-peihyvSbr?&lt;]*%9#');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('LOGGED_IN_KEY',<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;
</span>'#*!w}Qs|9[MMX}yLS7g}-.&gt;&amp;cw4pgKc~GNmwZK/LB*?.L4:kfYwqPoVF=bIy&gt;GH
');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('NONCE_KEY',<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>':+.Y@,}W|&amp;VGBzpby!surp?XlitGcoOfjFb+.a0:H8fd5e{3G=a{P+r2;&lt;=4RnUV');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('AUTH_SALT',<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>'.9&amp;@p&lt;KI5VCJj|?!1#m(G2&amp;:nBt+8qsfR%V)ICc &gt; iXT~CD~h-V+
13*@=B`omU');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('SECURE_AUTH_SALT',
'T$+ehx:ev1$-c$h1+nOD18Hc{ujGOya}=rC+@+4@^^kK$Xjs?-O&lt;-c.r@4,i|RS&gt;');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('LOGGED_IN_SALT',<span style="mso-spacerun: yes;">&nbsp;&nbsp;
</span>'XHboLDugNRmH*YS-JDmE~&amp;AEyN{0_*;2-m8j*I-ZF-Lh&amp;yQLG^$eHI3g3+nYBo&amp;&lt;');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">define('NONCE_SALT',<span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>'|,KNYJM+en~tM;t^@~j*d^aZnr}QYQ&lt;#Ch-*$VhYD]3=%Ee}^)i&lt;Terb;O(c-i3N');<o:p></o:p></span></p>

<p class="MsoNormal" style="border: none; line-height: normal; margin-bottom: 0cm; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 1.0pt 4.0pt 1.0pt 4.0pt; padding: 0cm;"><span style="font-size: 9.0pt; mso-bidi-font-size: 11.0pt;">ubuntu@ip-172-31-37-83:/tmp$<o:p></o:p></span></p>

</div>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>Now Copy
this content to wp-config.php file as below<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p align="center" class="MsoNormal" style="background: #D6DCEA; line-height: normal; margin-bottom: 0cm; text-align: center;"><span style="color: #24335a; font-family: &quot;Arial&quot;,sans-serif; font-size: 12.0pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/var/www/puneet/wp-config.php<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">. . .<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">// **
MySQL settings - You can get this info from your web host ** //<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/** The
name of the database for WordPress */<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define(
'DB_NAME', </span><span style="color: yellow; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">'wordpress'
</span><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">);<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/**
MySQL database username */<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define(
'DB_USER', </span><span style="color: yellow; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">'wordpressuser'
</span><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">);<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/**
MySQL database password */<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define(
'DB_PASSWORD', </span><span style="color: yellow; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">'password'
</span><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">);<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/**
MySQL hostname */<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define(
'DB_HOST', 'localhost' );<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/**
Database Charset to use in creating database tables. */<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define(
'DB_CHARSET', 'utf8' );<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">/** The
Database Collate type. Don't change this if in doubt. */<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define(
'DB_COLLATE', '' );<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">. . .<o:p></o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: #f7f8fb; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background: #11192E; line-height: 16.5pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;"><span style="color: yellow; font-family: &quot;Courier New&quot;; font-size: 10.5pt; mso-bidi-language: AR-SA; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-language: EN-IN; mso-font-kerning: 0pt; mso-ligatures: none;">define('FS_METHOD',
'direct');<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><o:p>&nbsp;</o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><o:p>&nbsp;</o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b><o:p>&nbsp;</o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><b>Install Wordpress
from webbrowser now.<o:p></o:p></b></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;">https://&lt;server_domain_or_IP&gt;<o:p></o:p></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><br /></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"></p><div class="separator" style="clear: both; text-align: center;"><a href="https://blogger.googleusercontent.com/img/a/AVvXsEixOtD8cHLTbMZi5GYYXI1rL2HcnIX3JzOBhPJhGTX0-qQWVTD5_9d39KoHFi5rkqjG0VEafNixVhkLHDV9RmL06xKCvXvWX2wy1ldpW-cE6KCIHZJHqJzrYPCI_n9dFq0OhqCi3EcM6gb6dOd821Xi2qM2g6omEjXsA4DMQXIKJFoufi3uXicxLcRcJ4Zt" style="margin-left: 1em; margin-right: 1em;"><img alt="" data-original-height="551" data-original-width="381" height="365" src="https://blogger.googleusercontent.com/img/a/AVvXsEixOtD8cHLTbMZi5GYYXI1rL2HcnIX3JzOBhPJhGTX0-qQWVTD5_9d39KoHFi5rkqjG0VEafNixVhkLHDV9RmL06xKCvXvWX2wy1ldpW-cE6KCIHZJHqJzrYPCI_n9dFq0OhqCi3EcM6gb6dOd821Xi2qM2g6omEjXsA4DMQXIKJFoufi3uXicxLcRcJ4Zt=w252-h365" width="252" /></a></div><p class="MsoNormal" style="line-height: normal; margin-bottom: 0cm;"><br /></p>SUCCESS!!!!!!!!!!!!!!!!!<br /><br /><p></p>
