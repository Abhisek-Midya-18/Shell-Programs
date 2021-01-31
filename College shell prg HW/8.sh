echo -n "Enter the number of rows: "
read n
echo
for ((i=0;i<n-1;i++))
do
  for ((j=0;j<=i;j++))
  do
    if [ $j -eq 0 -o $j -eq $i ]
    then
      echo -n "* "
    else
      echo -n "  " 
    fi   
  done
  echo
done
for ((j=1;j<=n;j++))
do
 echo -n "* "
done
echo 
