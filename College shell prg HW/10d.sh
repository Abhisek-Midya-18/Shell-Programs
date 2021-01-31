echo -n "Enter the number of term: "
read n
s=0
j=1
i=1
for ((c=1;c<=n;c++))
do
  s=$(($s+$i*$j))
  let i=i+2
  let j=j*-1
done
echo "The result is $s "
  
