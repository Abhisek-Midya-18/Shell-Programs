echo -n "Enter the number : "
read n
if [ $n -lt 2 ]
then
  echo "The entered number $n is not a prime number."  
  exit
fi
for (( i=2;i<=n/2;i++ ))
do
  if [ $(( $n % $i)) -eq 0 ]
  then
    break 
  fi
done
if [ $i -gt $(( $n / 2)) ]
then 
  echo "The entered number $n is a prime number."
else
  echo "The entered number $n is not a prime number."   
fi  
