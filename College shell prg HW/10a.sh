echo -n "Enter the number of term: "
read n
s=0
for ((i=1;i<=n;i++))
do
  s=$(($s+$i))
done
echo "The result is $s "
  
