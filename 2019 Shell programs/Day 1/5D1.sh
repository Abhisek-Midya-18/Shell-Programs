clear
echo -n "Enter the lower limit: "
read a
echo -n "Enter the upper limit: "
read b
echo -n "The armstrong numbers are: "
for ((n=a;n<=b;n++))
do
  z=$n
  i=0
  while [ $z -ne 0 ]
  do
    i=`expr $i + 1`
    z=`echo "$z/10" | bc`
  done
  z=$n
  s=0
  while [ $z -ne 0 ]
  do
    r=`echo "$z%10" | bc`
    s=`echo "$s + ($r ^ $i)" | bc`
    z=`echo "$z/10" | bc`
  done   
  if [ $s -eq $n ]
  then
    echo -n "$n "
  fi  
done
echo
