if [ $# -lt 1 ]
then
  echo "No argument found"
  exit
fi
str=""
for i in $*
do
  str=$i" "$str 
done
echo "$str"
