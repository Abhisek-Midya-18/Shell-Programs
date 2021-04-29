clear
echo -n "Enter the file name: "
read f1
if [ ! -f $f1 ]
then
  echo "Entered file name does not exist..."
  echo
  exit
fi
cat $f1 | grep -v -w -i "exam" > ff
cat ff > $f1
rm ff
echo
echo "Line remove sucessfully..."
echo
cat $f1
echo
