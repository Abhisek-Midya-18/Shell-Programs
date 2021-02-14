echo "The name of the directory whose name are >5 :- "
for k in `ls`
do
  if [ -d $k ]
  then
    c=`echo "$k" | wc -c`
    if [ $c -gt 5 ]    
    then
      echo $k
    fi
  fi
done

