if [ $# -ne 1 ]
then
  echo "Wrong argument passing.."
  exit
fi
if [ ! -f $1 ]
then
  echo "File not found..."
  exit
fi
file=$1
echo -n > newfile
exec < $file
while read line
do
  IFS=" "
  set $line
  for i in $*
  do
    grep -w $i newfile > temp
    if [ $? -ne 0 ]
    then	
      x=$(grep -w -o $i $file | wc -w)
      echo -e "$i\t\t$x" >> newfile
    fi
  done
done
echo -e "Word \t     frequency"
cat newfile
rm temp
rm newfile

