clear
echo -n "Enter the file name: "
read file
if [ ! -f $file ]
then
  echo "File not found..."
  exit
fi
echo
echo -n "Enter the word: "
read word
echo
c=`grep -o -w -i $word $file | wc -w`
if [ $c -ne 0 ]
then
  echo "The word $word has been found in the file $file $c times..."
else
  echo "The entered word $word is not found..."
fi  
echo
