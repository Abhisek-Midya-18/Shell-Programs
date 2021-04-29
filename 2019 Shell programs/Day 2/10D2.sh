clear
echo "The file whose size is 0 are: "
for i in `ls`
do
  if [ -f $i ]
  then
    c=`cat $i | wc -w`
    if [ $c -eq 0 ]
    then
      echo $i
    fi  
  fi
done
