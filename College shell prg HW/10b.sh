echo -n "Enter the number of term: "
read n
s=0
i=1
for ((c=1;c<=n;c++))
do
  s=$(($s+$i))
  let i=i+2
done
echo "The result is $s "
  
