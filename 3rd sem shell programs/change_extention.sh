echo -n "Enter the old extention type: "
read o
echo -n "Enter the new extention type: "
read n
for i in `ls *.$o`
do
  x=$(echo $i | cut -d "." -f 1)
  s=$x"."$n
  mv $i $s 
done
