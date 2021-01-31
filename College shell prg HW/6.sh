echo -n "Enter the number of rows: "
read n
for (( i=1;i<=n;i++ ))
do
  for ((s=1;s<=n-i;s++))
  do
    echo -n " "
  done
  for (( j=1;j<=i;j++ )) 
  do
    echo -n "$j "
  done
  echo " "
done     
