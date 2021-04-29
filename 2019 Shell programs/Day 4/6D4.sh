clear
echo -n "Enter the file name: "
read f1

if [ ! -f $f1 ]
then
  echo "Entered file name does not exist..."
  echo
  exit
fi

echo
echo -n "Enter the old word: "
read old
echo
echo -n "Enter the new word: "
read new

x=`grep -o -w $old $f1 | wc -w`

if [ $x -eq 0 ]
then
  echo
  echo "The old word is not found... so word replaced is not possible."
  echo
  exit
fi

sed s/$old/$new/ $f1 > ff
cat ff > $f1
rm ff

echo
echo "$old is replaced by $new sucessfully..."
echo
echo "The content of the file $f1 is: "
echo
cat $f1
echo

