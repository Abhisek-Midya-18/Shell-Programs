clear
echo -n "Enter the value of n: "
read n
echo
if [ $n -lt 1 ]
then
  exit
fi   
echo -n "Enter the element [1]: "
read x
max=$x
min=$x
for ((i=2;i<=n;i++))
do
  echo -n "Enter the element [$i]: "
  read x
  if [ $x -gt $max ]
  then
    max=$x
  elif [ $x -lt $min ]
  then
    min=$x
  fi    
done  
echo
echo "max = $max"
echo "min = $min"
echo
