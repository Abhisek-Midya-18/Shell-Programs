if [ $# -ne 1 ]
then
  echo "Wrong argument passing."
  exit
fi  
if [ ! -f $1 ]
then
  echo "$1 is not a file."
  echo
  exit
fi
echo -n "" > ff
f1=$1
exec < $f1
while read l
do
  i=1
  while [ "`echo $l | cut -c $i`" != "" ]
  do
    ch=`echo $l | cut -c $i`
    c=0
    for k in 0 1 2 3 4 5 6 7 8 9
    do
      if [ "$k" = "$ch" ]
      then
        let c=c+1
        break
      fi  
    done
    if [ $c -eq 0 ]
    then
      echo -n "$ch" >> ff
    fi  
    i=`expr $i + 1` 
  done
  echo >> ff
done  
cat ff > $f1
rm ff

