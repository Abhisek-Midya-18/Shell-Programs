cal()
{
  if [ $n -gt 0 ]
  then 
    s=`expr $s + $n`
    n=`expr $n - 1`
    cal
  fi  
}
echo -n "Enter the renge: "
read n
s=0
cal
echo "The sum is $s"
echo
