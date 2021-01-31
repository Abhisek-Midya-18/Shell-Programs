# -------- PERFECT NUMBER
clear
echo -n "Enter no. : " read n
s=0 n1=$n i=1
while [ $i -lt $n ] do
r=`expr $n % $i` if [ $r -eq 0 ] then
s=`expr $s + $i` fi
i=`expr $i + 1` done
if [ $n1 -eq $s ] then
echo "$n1 is Perfect No." else
echo "$n1 is Not Perfect No." fi
