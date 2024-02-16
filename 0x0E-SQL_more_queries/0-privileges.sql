#!/bin/bash

# Script to list privileges of MySQL users user_0d_1 and user_0d_2 on localhost

# Execute MySQL queries to retrieve privileges
mysql -h localhost -u root -p <<MYSQL_SCRIPT
SHOW GRANTS FOR 'user_0d_1'@'localhost';
SHOW GRANTS FOR 'user_0d_2'@'localhost';
MYSQL_SCRIPT

