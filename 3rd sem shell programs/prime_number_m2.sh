echo -n "Enter the number : "
read n
x=`factor $n`
set $x
if [ $# -eq 2 ]
then
  echo "The entered number $n is a prime number."
else 
  echo "The entered number $n is not a prime number."   
fi
