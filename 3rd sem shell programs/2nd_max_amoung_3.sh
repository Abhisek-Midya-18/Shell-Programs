echo -n "Enter the 1st number: "
read a
echo -n "Enter the 2nd number: "
read b
echo -n "Enter the 3rd number: "
read c
max=$c
if [ $a -gt $b ]
then
  if [ $c -gt $a ]
  then
    max=$a
  fi  
  if [ $b -gt $c ]
  then
    max=$b
  fi   
else
  if [ $c -gt $b ]
  then
    max=$b
  fi  
  if [ $a -gt $c ]
  then
    max=$a
  fi 
fi  
echo "The 2nd max is: "$max
