#!/bin/bash

# Script to create table second_table and insert multiple rows in the database in MySQL server
# Usage: ./9-create_and_insert.sh <database_name>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

DB_NAME="$1"
TABLE_NAME="second_table"

# Define the SQL query to create the table if it doesn't exist
CREATE_TABLE_QUERY="CREATE TABLE IF NOT EXISTS $TABLE_NAME (
    id INT,
    name VARCHAR(256),
    score INT
);"

# Define the SQL query to insert multiple rows into the table
INSERT_QUERY="INSERT INTO $TABLE_NAME (id, name, score) VALUES
(1, 'John', 10),
(2, 'Alex', 3),
(3, 'Bob', 14),
(4, 'George', 8);"

# Execute the SQL query to create the table
mysql -uroot -proot "$DB_NAME" -e "$CREATE_TABLE_QUERY"

# Execute the SQL query to insert multiple rows into the table
mysql -uroot -proot "$DB_NAME" -e "$INSERT_QUERY"

