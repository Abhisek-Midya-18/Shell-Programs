echo -n "Enter the file name:- "
read b
if [ ! -f $b ]
then
  echo "File not found..."
  exit
fi  
echo -n "Enter the word which you find:- "
read a
c=`grep -o -i $a $b | wc -w`
if [ $c -ne 0 ]
then
  echo "The word $a has been found in the file $c times..."
else
  echo "The entered word $a is not found..."
fi  
