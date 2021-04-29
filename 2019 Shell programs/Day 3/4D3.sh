clear
if [ $# -ne 1 ]
then
  echo "Wrong argument passing..."
  echo
  exit
fi
echo -n "The prime factor of $1 is/are:"
factor $1 | cut -d ":" -f 2
echo
