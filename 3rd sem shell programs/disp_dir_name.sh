echo "The name of the directory are:- "
for k in `ls`
do
  if [ -d $k ]
  then
    echo $k
  fi
done

