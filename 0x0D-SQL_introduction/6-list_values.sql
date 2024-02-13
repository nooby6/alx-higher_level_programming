#!/bin/bash

# Script to list all rows of the table first_table from the database in MySQL server
# Usage: ./6-list_rows.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="first_table"

# Define the SQL query to select all rows from the table
SQL_QUERY="SELECT * FROM $TABLE_NAME;"

# Execute the SQL query to list all rows from the table
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"
