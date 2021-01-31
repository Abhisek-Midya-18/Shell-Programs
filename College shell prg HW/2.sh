echo -n "Enter the number of rows: "
read n
echo
for (( i=1;i<=n;i++ ))
do
  for ((s=1;s<=2*(n-i);s++))
  do
    echo -n " "
  done
  for (( j=1;j<=i;j++ )) 
  do
    echo -n "* "
  done
  echo " "
done     
echo
