echo -n "Enter the number of rows: "
read n
for (( i=1;i<=n;i++ ))
do
  for (( space=1;space<=2*n-i;space++ ))
  do
    echo -n " "
  done
  for (( j=1;j<=2*i-1;j++ )) 
  do
    echo -n "*"
  done
  echo " "
done     
