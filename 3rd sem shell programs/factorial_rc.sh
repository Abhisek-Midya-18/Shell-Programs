cal()
{
  if [ $n -gt 0 ]
  then 
    s=`expr $s \* $n`
    n=`expr $n - 1`
    cal
  fi  
}
echo -n "Enter the number: "
read n
s=1
cal
echo "The factorial is $s"
echo
