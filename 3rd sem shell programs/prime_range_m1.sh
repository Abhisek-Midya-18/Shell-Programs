echo -n "Enter the lower limit : "
read a
echo -n "Enter the upper limit : "
read b
echo -n "The prime numbers are : "
for (( n=a;n<=b;n++ ))
do
  for (( i=2;i<=n/2;i++ ))
  do
    if [ $(( $n % $i)) -eq 0 ]
    then
      break 
    fi
  done
  if [ $i -gt $(( $n / 2)) -a $n -ge 2 ]
  then 
    echo -n "$n "
  fi  
done
echo
