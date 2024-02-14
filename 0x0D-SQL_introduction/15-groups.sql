#!/bin/bash

# Script to list the number of records with the same score in the table second_table of the database in MySQL server
# Usage: ./count_records_by_score.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"

# Define the SQL query to count the number of records with the same score and sort the results
SQL_QUERY="SELECT score, COUNT(*) AS number FROM second_table GROUP BY score ORDER BY number DESC;"

# Execute the SQL query
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

