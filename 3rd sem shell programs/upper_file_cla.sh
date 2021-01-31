if [ $# -ne 1 ]
then
  echo "Wrong argument passing.."
  exit
fi
if [ ! -f $1 ]
then
  echo "File not found..."
  exit
fi
exec < $1
while read l
do
  ch=`echo $l | tr '[a-z]' '[A-Z]'`
  echo $ch | cat >> ff
done
mv ff $1
cat $1
