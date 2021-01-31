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
  min=$i
  for (( j=i+1;j<n;j++ ))  
  do
    if [ $((a[$min])) -gt $(( a[$j] )) ]
    then
      min=$j
    fi
  done
  if [ $min -ne $i ]
  then
    t=$((a[$min]))
    a[$min]=$((a[$i]))
    a[$i]=$t
  fi
done
echo "Sorted elements are...."
for (( i=0;i<n;i++ ))
do
  echo -n $(( a[$i] ))" "
done      
echo
