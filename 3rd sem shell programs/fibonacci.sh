echo -n "Enter how many number you want: "
read n
a=0
b=1
echo -n "The fibonaci serise are : "
if [ $n -lt 2 ]
then 
  echo $a
elif [ $n -ge 2 ]
then
  echo -n "$a $b "
  for (( i=2;i<n;i++ ))
  do
    y=`expr $a + $b`
    echo -n "$y "
    a=$b
    b=$y
  done   
fi  
echo
