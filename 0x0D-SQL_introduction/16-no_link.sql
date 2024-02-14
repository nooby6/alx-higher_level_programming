#!/bin/bash

# Script to list all records of the table second_table in the database in MySQL server
# Only rows with a name value will be listed
# Results display the score and the name (in this order), sorted by descending score
# Usage: ./list_records_with_name.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"

# Define the SQL query to retrieve records with a name value, displaying score and name, sorted by descending score
SQL_QUERY="SELECT score, name FROM second_table WHERE name IS NOT NULL ORDER BY score DESC;"

# Execute the SQL query
mysql -uroot -proot "$DB_NAME" -e "$SQL_QUERY"

