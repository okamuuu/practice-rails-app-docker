set -e

cmd="$@"

until $cmd ; do
  >&2 echo "sleeping"
  echo $?
  sleep 1
done

>&2 echo "executing command"
