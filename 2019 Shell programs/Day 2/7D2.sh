clear
echo -n "Enter the file name: "
read f1
echo
if [ ! -f $f1 ]
then
  echo "$f1 is not a file."
  echo
  exit
fi
c=0
exec < $f1
while read l
do
  set $l
  for i in $*
  do
    echo $i | grep [ae] > temp 
    if [ $? -ne 0 ]
    then
      let c=c+1
    fi
  done
done
rm temp
echo "Total number of word which do't content (a or e) : $c"
echo    
