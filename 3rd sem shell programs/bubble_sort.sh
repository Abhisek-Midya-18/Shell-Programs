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
for (( i=0;i<n-1;i++ ))
do
  for (( j=0;j<n-i-1;j++ ))  
  do
    if [ $(( a[$j] )) -gt $(( a[$((j+1))] )) ]
    then
      t=$(( a[$j] ))
      a[$j]=$(( a[$((j+1))] ))
      a[$((j+1))]=$t
    fi
  done
done
echo "Sorted elements are...."
for (( i=0;i<n;i++ ))
do
  echo -n $(( a[$i] ))" "
done      
echo
