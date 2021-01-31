echo -n "Enter the string: "
read str
str=`echo $str | tr '[A-Z]' '[a-z]'`
echo $str
