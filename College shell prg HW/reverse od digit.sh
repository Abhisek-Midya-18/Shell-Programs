#	REVERS OF DIGIT
echo -n "Enter no. : "
 read n
s=0
while [ $n -gt 0 ]
 do

r=`expr $n % 10`
 n=`expr $n / 10` 
s=`expr $s \* 10 + $r`

done
echo "Reverse Digit : $s"

