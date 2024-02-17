-- Lists all privileges of the MySQL users user_0d_1 and user_0d_2
--Script: list_privileges.sh
--Description: Lists all privileges of the MySQL users user_0d_1 and user_0d_2 on the localhost.

--Function to list privileges for a MySQL user
list_privileges() {
    local username="$1"
    local hostname="$2"
    # SQL query to show grants for the user
    mysql -h localhost -u root -p -e "SHOW GRANTS FOR '$username'@'$hostname';"
}

--List privileges for user_0d_1
echo "Privileges for user_0d_1:"
list_privileges "user_0d_1" "localhost"

--List privileges for user_0d_2
echo "Privileges for user_0d_2:"
list_privileges "user_0d_2" "localhost"
