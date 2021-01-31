echo -n "Enter the number of elements:- "
read n
echo "Enter data for sorting..."
echo
for (( i=0;i<n;i++ ))
do
  echo -n "enter a[$((i+1))]= "
  read a[$i]
  echo
done
for (( i=1;i<n;i++ ))
do
  t=$(( a[$i] ))
  for (( j=i-1;j>=0;j-- ))  
  do
    if [ $t -lt $(( a[$j] )) ]
    then
      a[$((j+1))]=$(( a[$j] ))
    else
      break  
    fi
  done
  a[$((j+1))]=$t
done
echo "Sorted elements are...."
for (( i=0;i<n;i++ ))
do
  echo -n $(( a[$i] ))" "
done      
echo
