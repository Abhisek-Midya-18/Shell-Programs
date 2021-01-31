// array reverse
echo "Enter the range"
echo "================"
read n
i=0
while [ $i -lt $n ]
do
read x
if [ $x -gt 0 ] ; then
a[$i]=$x
else
echo "Invalid number"
echo "Error!!"
exit
fi
i=`expr $i + 1`
done
echo "Array elements are"
i=0
while [ $i -lt $n ]
do
echo ${a[$i]}
i=`expr $i + 1`
done
j=`expr $n - 1`
echo "The reverse order.."
echo "====================="
while [ $j -ge 0 ]
do
echo ${a[$j]}
j=`expr $j - 1`
done