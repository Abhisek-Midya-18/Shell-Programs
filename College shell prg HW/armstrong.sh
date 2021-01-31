# ------ ARMSTRONG NUMBER
clear
echo -n "Enter no. : " read n
s=0 p=0 n1=$n
while [ $n -gt 0 ] do
n=`expr $n / 10` p=`expr $p + 1` done
n=$n1
while [ $n -gt 0 ] do
pw=1
r=`expr $n % 10` n=`expr $n / 10` t=$r
while [ $pw -lt $p ] do
t=`expr $t \* $r` pw=`expr $pw + 1` done
s=`expr $s + $t`
done
if [ $n1 -eq $s ] then
echo "$n1 This number is Armstrong number."
else
echo "$n1 This number is not Armstrong number." fi