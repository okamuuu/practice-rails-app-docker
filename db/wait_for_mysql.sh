set -e

cmd="$@"
cmd="$@"
host="$DATABASE_HOST"
user="$DATABASE_USERNAME"
passowrd="$DATABASE_PASSWORD"

until mysql -u$user -h$host -p$passowrd -e 'SELECT 1' &> /dev/null; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "MySQL is up - executing command"
 
exec $cmd
