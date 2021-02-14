if [ $# -ne 1 ]
then
   echo "Wrong argument passing"
   exit
fi
if [ ! -f $1 ]
then
  echo "$1 is not a file"
  exit
fi
f1=$1
line=0
w=0
c=0
exec < $f1
while read l
do
  i=1
  line=`expr $line + 1`
  while [ "`echo $l | cut -c $i`" != "" ]  
  do
    c=`expr $c + 1`
    i=`expr $i + 1`
  done
  IFS=" "
  set $l
  w=`expr $w + $#`	
done
echo
echo "No of lines : " $line
echo "No of words : " $w
echo "No of char : " $c
echo
