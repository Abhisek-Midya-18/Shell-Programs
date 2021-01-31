echo -n "Enter the string: "
read str
str=`echo $str | tr '[a-z]' '[A-Z]'`
echo $str
