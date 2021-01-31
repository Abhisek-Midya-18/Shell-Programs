echo -n "Enter how many numbers you want : "
read n
s=0
i=1
while [ $i -le $n ]
do
	echo -n "Enter value : "
	read x
	s=`expr $s + $x` 
	i=`expr $i + 1`
done
echo "The sum is: "$s	 
s=`echo "$s / $n" | bc`  
echo "The average is: "$s	
