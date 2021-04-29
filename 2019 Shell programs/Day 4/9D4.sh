clear
echo -n "Enter the File name: "
read file
if [ ! -f $file ]
then
  echo "File not found..."
  exit
fi
exec < $file
while read l
do
  ch=`echo $l | tr '[A-Z]' '[a-z]'`
  echo $ch | cat >> ff
done
mv ff $file
echo
echo "The content of the file after converting to lower case "
echo
cat $file
echo
