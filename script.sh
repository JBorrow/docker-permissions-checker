this_id=$(id -u $USER)
this_group=$(id -g $USER)
file_name=$(date +%s)

echo "This user has id ${this_id} and gid ${this_group}"
echo "This user is part of the following groups:"
groups

echo "Creating file ${file_name} in ./example"

touch ./example/$file_name

echo "This file has permissions and ownership:"

ls -ltrah ./example/$file_name

if [ $DELETE_FILE_AFTER_PERMISSIONS_CHECK ]
then
  echo "Deleting ${file_name}"
  rm ./example/$file_name
fi

