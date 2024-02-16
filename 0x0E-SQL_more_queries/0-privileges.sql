# Script to list privileges of MySQL users user_0d_1 and user_0d_2 on localhost
# This script connects to the MySQL server running on localhost and queries the privileges for the specified users.

# Connect to MySQL server and query privileges for user_0d_1 and user_0d_2
mysql -h localhost -u root -p <<MYSQL_SCRIPT
SHOW GRANTS FOR 'user_0d_1'@'localhost';
SHOW GRANTS FOR 'user_0d_2'@'localhost';
MYSQL_SCRIPT
