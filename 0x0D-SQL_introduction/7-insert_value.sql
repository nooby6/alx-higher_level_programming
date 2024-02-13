#!/bin/bash

# Script to insert a new row into the table first_table in the database in MySQL server
# Usage: ./7-insert_row.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="first_table"
ID=89
NAME="Best School"

# Define the SQL query to insert a new row into the table
SQL_QUERY="INSERT INTO $TABLE_NAME (id, name) VALUES ($ID, '$NAME');"

# Execute the SQL query to insert the new row into the table
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

