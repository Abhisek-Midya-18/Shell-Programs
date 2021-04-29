echo -n "Enter the number of rows: "
read n
if [ $(( $n % 2 )) -eq 0 ]
then
  echo
  echo "The number of rows must be odd numbers."
  echo
  exit
fi
for (( i=1;i<=n/2+1;i++ ))
do
  for (( space=i;space<=n-i+2;space++ ))
  do
    echo -n " "
  done
  for (( j=1;j<=2*i-1;j++ )) 
  do
    echo -n "* "
  done
  echo " "
done    

for (( i=n/2;i>=1;i-- ))
do
  for (( space=n-i+2;space>=i;space-- ))
  do
    echo -n " "
  done
  for (( j=1;j<=2*i-1;j++ )) 
  do
    echo -n "* "
  done
  echo " "
done 


