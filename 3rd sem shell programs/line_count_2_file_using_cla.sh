if [ $# -ne 2 ]
then
  echo "Wrong argument passing..."
  exit
fi  
if [ ! -f $1 ]
then
  echo "File 1 not found..."
  exit
fi 
if [ ! -f $2 ]
then
  echo "File 2 not found..."
  exit
fi 
a=`cat $1 | wc -l`
b=`cat $2 | wc -l`
echo "$1 file contains $a numbers of lines..."
echo "$2 file contains $b numbers of lines..."
if [ $a -gt $b ]
then
  echo "$1 file contains the maximum numbers of lines..."
elif [ $b -gt $a ]  
then
  echo "$2 file contains the maximum numbers of lines..."
fi  
