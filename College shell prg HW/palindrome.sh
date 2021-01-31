# ----- NUMBER PALINDROM
clear
echo -n "Enter no. : " read n
s=0 n1=$n
while [ $n -gt 0 ] do
r=`expr $n % 10` n=`expr $n / 10` s=`expr $s \* 10 + $r` done
if [ $n1 -eq $s ] then
echo "$n1 is Palindrom No." else
echo "$n1 is Not Palindrom No." fi