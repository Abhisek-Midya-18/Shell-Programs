#bubble short program
 clear
echo -n "enter how many number : "
 read n

for (( i=0; i<n; i++ )) 
do
read arr[$i]
 done

#printing the number before sorting
echo -e "\nPrint the number before sorting : \n"
 for (( i=0; i<n; i++ ))
do
echo -n "${arr[$i]} "
 done
#now do the sorting the number
for (( i=0; i<n; i++ ))
do
for (( j=0; j<n-i-1; j++ )) 
do
if [ ${arr[$j]} -gt ${arr[$j+1]} ]; then t=${arr[$j]}
arr[$j]=${arr[$j+1]} arr[$j+1]=$t
fi 
done
 done

#print the sorted number
echo -e "\nPrint the sorted number : \n" 
for (( i=0; i<n; i++ ))
do
echo -n "${arr[$i]}    "

done 
echo

