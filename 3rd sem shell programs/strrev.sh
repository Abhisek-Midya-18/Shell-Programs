echo -n "Enter the string : "
read str
i=1
revstr=""
while true
do 
  ch=`echo $str | cut -c $i`
  if [ "$ch" != "" ]
  then 
    revstr=$ch$revstr
  else
    break
  fi
  i=`expr $i + 1`
done
echo "the reverse of the string is: "$revstr
