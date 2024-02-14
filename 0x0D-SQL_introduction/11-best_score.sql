#!/bin/bash

# Script to list records with score >= 10 from the table second_table in the database in MySQL server
# Results display both the score and the name (ordered by score, top first)
# Usage: ./11-list_records_with_score.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="second_table"

# Define the SQL query to list records with score >= 10 and display both score and name, ordered by score
SQL_QUERY="SELECT score, name FROM $TABLE_NAME WHERE score >= 10 ORDER BY score DESC;"

# Execute the SQL query to list records with score >= 10 and display both score and name, ordered by score
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

