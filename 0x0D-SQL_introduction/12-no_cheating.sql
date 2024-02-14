#!/bin/bash

# Script to update the score of Bob to 10 in the table second_table of the database in MySQL server
# Usage: ./12-update_score.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="second_table"
NAME="Bob"
NEW_SCORE=10

# Define the SQL query to update the

