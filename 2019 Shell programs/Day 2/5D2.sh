clear
if [ $# -ne 2 ]
then
  echo "Wrong argument passing..."
  exit
fi
if [ ! -f $1 ]
then
  echo "File not found..."
  exit
fi  
c=`grep -o -w -i $2 $1 | wc -w`
if [ $c -ne 0 ]
then
  echo "The word $2 has been found in the file $c times..."
else
  echo "The entered word $2 is not found..."
fi  
