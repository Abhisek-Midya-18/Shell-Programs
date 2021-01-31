echo -n "Enter the number of rows: "
read n
if [ $(( $n % 2 )) -eq 0 ]
then
  echo "Please enter odd number of rows. "
  exit
fi
let n=n+1
for (( i=1;i<=n/2;i++ ))
do
  for (( space=i;space<=n/2;space++ ))
  do
    echo -n " "
  done
  for (( j=1;j<=2*i-1;j++ )) 
  do
    echo -n "*"
  done
  echo " "
done    
for (( i=n/2-1;i>0;i-- ))
do
  for (( space=i;space<=n/2;space++ ))
  do
    echo -n " "
  done
  for (( j=2*i-1;j>0;j-- )) 
  do
    echo -n "*"
  done
  echo " "
done    
 
