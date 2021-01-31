# ----------PRIME NUMBER
clear
echo -n "Enter no. : " read n
f=0 r=0 i=2
while [ $i -le $n ] do
r=`expr $n % $i` if [ $r -eq 0 ]
then
f=`expr $f + 1`
fi
i=`expr $i + 1` done
if [ $f -eq 1 ] then
echo "$n This number is Prime No." else
echo "$n This number is Not Prime No."
fi