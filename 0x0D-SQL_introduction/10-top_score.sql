#!/bin/bash

# Script to list all records of the table second_table from the database in MySQL server
# Results display both the score and the name (ordered by score, top first)
# Usage: ./10-list_records.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="second_table"

# Define the SQL query to list all records with score and name, ordered by score
SQL_QUERY="SELECT score, name FROM $TABLE_NAME ORDER BY score DESC;"

# Execute the SQL query to list all records with score and name, ordered by score
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

