clear
echo -n "Enter the value of n: "
read n
r=0
for ((i=1;i<=n;i++))
do
  f=1
  for ((j=1;j<=i;j++))
  do
    f=`echo "$j * $f" | bc`
  done
  r=`expr $r + $f`
done
echo
echo "The trsult is: $r "
echo  
