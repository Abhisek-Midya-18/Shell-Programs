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
if [ "$revstr" = "$str" ]
then
  echo "$str is palindom."
else
  echo "$str is not palindom."
fi
  
