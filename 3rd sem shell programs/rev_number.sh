echo -n "Enter the number: "
read n
s=0
z=$n
while [ $z -ne 0 ]
do
  let s=$s*10+$(( $z % 10))
  let z=$z/10
done
echo "The reverse of the number $n is "$s
echo  
