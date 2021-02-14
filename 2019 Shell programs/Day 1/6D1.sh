clear
echo -n "Enter the first number: "
read a
echo -n "Enter the second number: "
read b
echo -n "Enter the third number: "
read c

m=$a              # find minimum
if [ $a -lt $b ]
then
  if [ $a -lt $c ]
  then  
    m=$a
  else  
    m=$c
  fi
  else
    if [ $b -lt $c ]
    then
      m=$b
    else
      m=$c  
    fi
fi         
 
while [ $m -ge 1 ]  
do
  if [ $(($a%$m)) -eq 0 -a $(($b%$m)) -eq 0 -a $(($c%$m)) -eq 0 ]
  then
    break
  fi  
  m=`expr $m - 1`
done
echo
echo "The GCD of $a, $b, $c is => $m"
echo
