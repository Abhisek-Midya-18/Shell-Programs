clear
prime()
{
  x=`factor $1`
  set $x
  if [ $# -eq 2 ]
  then
    echo -n "$y "
  fi
}
echo -n "The prime fibonacci numbers are : "
a=1
b=2
y=2
while [ $y -lt 50 ]
do 
  prime $y
  y=`expr $a + $b`
  a=$b
  b=$y
done
echo
echo
