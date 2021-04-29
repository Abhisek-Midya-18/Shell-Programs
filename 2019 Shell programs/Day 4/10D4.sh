clear
echo -n "Enter the file name : "
read f1
echo
if [ ! -f $f1 ]
then
  echo "File not exist."
  echo
  exit
fi
echo -n "Enter the lower line number [m] : "
read m
echo
echo -n "Enter the upper line number [n] : "
read n
echo
x=`cat $f1 | wc -l`
if [ $m -ge $n -o $n -ge $x -o $m -lt 1 ]
then
  echo "Enter line numbers are not valid"
  echo
  exit
fi
head -$n $f1 | tail -$(($n-$m+1)) > ff.txt
echo "The content is : "
echo
cat ff.txt
echo
