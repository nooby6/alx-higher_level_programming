#!/bin/bash

# Script to compute the average score of all records in the table second_table in the database in MySQL server
# Usage: ./compute_average_score.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="second_table"

# Define the SQL query to compute the average score
SQL_QUERY="SELECT AVG(score) AS average FROM $TABLE_NAME;"

# Execute the SQL query to compute the average score
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUER"

