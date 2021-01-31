echo -n "Enter the number of term: "
read n
j=1
s=0
for ((i=1;i<=n;i++))
do
  s=$(($s+$i*$j))
  let j=j*-1
done
echo "The result is $s "
  
