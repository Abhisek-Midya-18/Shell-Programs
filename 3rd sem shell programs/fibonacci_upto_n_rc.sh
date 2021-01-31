fibo()
{
  let c=$a+$b
  if [ $c -le $n ]
  then
    echo -n " "$c
    a=$b
    b=$c
    fibo
  fi
}
echo -n "Enter the range: "
read n
a=0
b=1
echo "The fibonacci numbers are:-" 
if [ $n -eq 0 ]
then
  echo "$a"
  exit
elif [ $n -ge 1 ]
then
  echo -n "$a $b"
fi
fibo 
echo
