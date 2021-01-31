echo -n "Enter the number of rows: "
read n
echo
for ((i=0;i<n;i++))
do
  for ((s=1;s<n-i;s++))
  do
    echo -n " "
  done
  for ((j=0;j<=i;j++))
  do
    if [ $j -eq 0 -o $i -eq 0 ]
    then
      b=1
    else
      b=`expr $b \* $(($i-$j+1)) / $j`
    fi
    echo -n "$b "   
  done
  echo
done
echo 
