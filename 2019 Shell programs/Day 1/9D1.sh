clear
echo -n "Enter the string: "
read str
v=0
c=0
i=1
while [ "`echo $str | cut -c $i`" != "" ]
do
  ch=`echo $str | cut -c $i`
  flag=0
  for k in a e i o u A E I O U
  do
    if [ "$k" = "$ch" ]
    then
      v=`expr $v + 1`
      flag=1
      break
    fi  
  done
  if [ "$ch" = " " -o "$ch" = "." -o "$ch" = "," ]
  then
    flag=1
  fi  
  if [ $flag -eq 0 ]
  then
    c=`expr $c + 1`
  fi 
  i=`expr $i + 1` 
done
echo
echo "Number of vowel = $v"
echo "Number of consunent = $c"
echo "Total number of Charecter = $(($i-1))"
echo
