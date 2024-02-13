#!/bin/bash

# Script to list all tables of a database in MySQL server
# Usage: ./3-list_tables.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"

mysql -uroot -proot "$DB_NAME" -e "SHOW TABLES;"

