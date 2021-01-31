echo -n "Enter the marks of bengali: "
read a
echo -n "Enter the marks of english: "
read b
echo -n "Enter the marks of math: "
read c
echo -n "Enter the marks of computer: "
read d
s=`echo "($a+$b+$c+$d)/4" | bc`
if [ $s -gt 100 ]
then 
  echo "you entered wrong value."
  exit
fi
t=`expr $a + $b + $c + $d`
echo "Your total marks is $t"
if [ $s -ge 90 ]
then
  echo "Your greade is A "
elif [ $s -ge 80 -a $s -lt 90 ]
then
  echo "Your greade is B " 
elif [ $s -ge 70 -a $s -lt 80 ]
then
  echo "Your greade is C " 
elif [ $s -ge 60 -a $s -lt 70 ]
then
  echo "Your greade is D "
else
  echo "Your greade is F "
fi
