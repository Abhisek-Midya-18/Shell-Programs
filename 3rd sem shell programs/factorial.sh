echo -n "Enter the number: "
read n
f=1
for (( i=1;i<=n;i++ ))
do
  f=`expr $f \* $i`
done
echo "The factorial is: $f "
