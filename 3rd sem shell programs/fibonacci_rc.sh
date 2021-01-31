fibo()
{
  if [ $i -le $n ]
  then
    let c=$a+$b
    echo -n " "$c
    a=$b
    b=$c
    let i=i+1
    fibo 
  fi
}
echo -n "Enter the number of term: "
read n
a=0
b=1
echo "The fibonacci numbers are:-" 
if [ $n -lt 1 ]
then
  exit
elif [ $n -eq 1 ]
then
  echo -n "$a"
  exit
elif [ $n -ge 2 ]
then
  echo -n "$a $b"  
fi
i=3
fibo  
echo
