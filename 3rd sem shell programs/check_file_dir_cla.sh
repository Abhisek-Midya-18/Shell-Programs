if [ $# -lt 1 ]
then
  echo "Wrong argument passing..."
  exit
fi  
for k in $*
do
  if [ -f $k ]
  then
    a=`cat $k | wc -l`
    echo "$k is a file and it's contains $a numbers of lines... "   
  elif [ -d $k ]
  then
    echo "$k is a directory..."
  else
    echo "$k is not a file or directory...."  
  fi 
done
