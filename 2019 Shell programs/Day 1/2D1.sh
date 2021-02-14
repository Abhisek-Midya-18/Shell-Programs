clear
echo -n "Enter the number: "
read n
z=$n
s=0
while [ $z -ne 0 ]
do
  r=`echo "$z%10" | bc`
  s=`echo "$s*10+$r" | bc`
  z=`echo "$z/10" | bc`
done
echo
if [ $s -eq $n ]
then
  echo "The enter number $n is a Palindrome number"
else
  echo "The enter number $n is not a Palindrome number"
fi  
echo
