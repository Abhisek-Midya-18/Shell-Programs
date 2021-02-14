clear
echo -n "Enter the number of rows: "
read n
echo
for (( i=1;i<=n;i++ ))
do
  if [ $(($i%2)) -eq 0 ]
  then
    for (( j=1;j<=i;j++ )) 
    do
      if [ $(($j%2)) -eq 0 ]
      then
        echo -n "1 "
      else
        echo -n "0 "
      fi  
    done  
  else
    for (( j=1;j<=i;j++ )) 
    do
      if [ $(($j%2)) -eq 0 ]
      then
        echo -n "0 "
      else
        echo -n "1 "
      fi  
    done
  fi  
  echo " "
done     
echo
