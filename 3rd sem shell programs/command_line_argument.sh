echo "Total number of argument passing in this program is $# "

echo
echo "Method 1 : display individual "
echo $0 
echo $1
echo $2
echo "."
echo "."
echo "."

echo
echo "Method 2 : using for loop "
for i in $*
do
  echo $i
done  

