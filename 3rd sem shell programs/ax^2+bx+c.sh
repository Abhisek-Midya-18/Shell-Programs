echo -n "Enter the value of a :- "
read a
echo -n "Enter the value of b :- "
read b
echo -n "Enter the value of c :- "
read c
p=`echo "($b^2)-(4*$a*$c)" | bc`
if [ $p -gt 0 ]
then
  q=`echo "scale=2;sqrt ($p)" | bc`
  r1=`echo "scale=2;(-($b)+$q)/(2*$a)" | bc`
  r2=`echo "scale=2;(-($b)-$q)/(2*$a)" | bc`
  echo "The roots of the quadratic equation are real, unequal and rational or irrational :-"
  echo root1= $r1
  echo root2= $r2
elif [ $p -lt 0 ]
then
  echo "The roots are unequal and imaginary."
else
  q=`echo "scale=2;sqrt ($p)" | bc`
  r1=`echo "scale=2;(-($b)+$q)/(2*$a)" | bc`
  echo "The roots are real and equal :-"
  echo root= $r1
fi  
