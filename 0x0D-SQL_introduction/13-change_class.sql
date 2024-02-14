#!/bin/bash

# Script to remove all records with a score <= 5 from the table second_table in the database in MySQL server
# Usage: ./remove_low_scores.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="second_table"

# Define the SQL query to remove all records with score <= 5
SQL_QUERY="DELETE FROM $TABLE_NAME WHERE score <= 5;"

# Execute the SQL query to remove all records with score <= 5
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

