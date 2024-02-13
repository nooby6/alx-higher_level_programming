#!/bin/bash

# Script to print the full description of the table first_table from the database in MySQL server
# Usage: ./5-print_table_description.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="first_table"

# Define the SQL query to get the table description
SQL_QUERY="SELECT COLUMN_NAME, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = '$DB_NAME' AND TABLE_NAME = '$TABLE_NAME';"

# Execute the SQL query to get the table description
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"
