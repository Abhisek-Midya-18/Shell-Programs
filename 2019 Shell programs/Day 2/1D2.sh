clear
echo -n "Enter the number of rows: "
read n
echo
for (( i=1;i<=n;i++ ))
do
  for ((s=1;s<=2*(n-i)+10;s++))
  do
    echo -n " "
  done
  for (( j=1;j<=i;j++ )) 
  do
    if [ $(($j%2)) -eq 0 ]
    then
      echo -n "1 "
    else
      echo -n "0 "
    fi  
  done
  echo " "
done     
echo
