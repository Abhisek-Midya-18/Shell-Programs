echo -n "Enter the number of row of 1st matrix: "
read r1
echo
echo -n "Enter the number of column of 1st matrix: "
read c1
echo
echo
echo -n "Enter the number of row of 2nd matrix: "
read r2
echo
echo -n "Enter the number of column of 2nd matrix: "
read c2

if [ $c1 -ne $r2 ]
then
  echo
  echo
  echo "The matrix multipication is not possible..."
  echo
  exit
fi

echo
echo
echo "Enter the 1st matrix: "
echo
for (( i=0;i<r1;i++ ))
do
  for (( j=0;j<c1;j++ ))
  do
    echo -n "enter a[$((i+1))][$((j+1))]= "
    read a[$i$j]
    echo
  done
  echo
done   

echo
echo
echo "Enter the 2nd matrix: "
echo
for (( i=0;i<r2;i++ ))
do
  for (( j=0;j<c2;j++ ))
  do
    echo -n "enter b[$((i+1))][$((j+1))]= "
    read b[$i$j]
    echo
  done
  echo
done

echo
echo "The 1st matrix is:-"
echo
for (( i=0;i<r1;i++ ))
do
  for (( j=0;j<c1;j++ ))
  do
    echo -n $((a[$i$j]))" "
  done
  echo
done 

echo
echo "The 2nd matrix is:-"
echo
for (( i=0;i<r2;i++ ))
do
  for (( j=0;j<c2;j++ ))
  do
    echo -n $((b[$i$j]))" "
  done
  echo
done   
echo

for (( i=0;i<r1;i++ ))
do
  for (( j=0;j<c2;j++ ))
  do
    c[$i$j]=0
    for (( k=0;k<c1;k++ ))
    do
      c[$i$j]=`echo $((c[$i$j]))+$((a[$i$k]))*$((b[$k$j])) | bc`
     #let c[$i$j]=$((c[$i$j]))+$((a[$i$k]))*$((b[$k$j]))
    done
  done
done  

echo "The multipication of the two matrix is:-"
echo
for (( i=0;i<r1;i++ ))
do
  for (( j=0;j<c2;j++ ))
  do
    echo -n $((c[$i$j]))" "
  done
  echo
done 
echo
