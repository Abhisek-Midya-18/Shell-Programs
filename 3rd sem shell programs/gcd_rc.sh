gcd()
{
  if [ $(($1 % $2)) -eq 0 ]
  then 
    g=$2
  else
    a=`echo "$1 % $2" | bc`
    gcd $2 $a
  fi  
}
echo -n "Enter the 1st value: "
read x
echo -n "Enter the 2nd value: "
read y
if [ $x -le 0 -o $y -le 0 ]
then
  echo "please enter non-zero positive integer."
  exit
fi  
if [ $x -gt $y ]
then
  gcd $x $y
else
  gcd $y $x
fi
echo "The gcd of two number $x and $y  is $g"    
