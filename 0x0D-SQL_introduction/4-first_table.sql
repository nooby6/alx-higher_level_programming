#!/bin/bash

# Script to create a table called first_table in the current database in MySQL server
# Usage: ./4-create_table.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"

# Define the SQL query to create the table
SQL_QUERY="CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);"

# Execute the SQL query to create the table
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

