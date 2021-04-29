clear
echo -n "Enter the number of element: "
read n
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
echo -n "Enter the value which you want to search: "
read x
echo
low=0
high=$n
while [ $low -le $high ]
do
  let mid=(low+high)/2
  if [ $x -eq $((a[$mid])) ]
  then
    echo "value $x is found."
    echo
    exit
  fi
  if [ $x -lt $((a[$mid])) ]
  then
    let high=mid-1
  else
    let low=mid+1  
  fi  
done
echo "value $x is not found."
echo
