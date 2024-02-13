#!/bin/bash

# Script to count the number of records with id = 89 in the table first_table of the database in MySQL server
# Usage: ./8-count_records.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="first_table"
ID=89

# Define the SQL query to count the number of records with id = 89 in the table
SQL_QUERY="SELECT COUNT(*) FROM $TABLE_NAME WHERE id = $ID;"

# Execute the SQL query to count the number of records with id = 89 in the table
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

