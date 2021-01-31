echo -n "Enter the upper lemit: "
read n
a=0
b=1
y=1
if [ $n -gt 0 ]
then
  echo -n "$a "
fi
while [ $y -lt $n ]
do
  echo -n "$y "
  y=`expr $a + $b`
  a=$b
  b=$y
done
