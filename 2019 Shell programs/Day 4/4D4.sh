clear
ls -l | grep "^-" > temp.xyz
grep -v "temp.xyz" temp.xyz > temp.txt
rm temp.xyz
echo "The files are which have read permission for all users: "
echo
exec < temp.txt
while read l
do
  if [ "`echo $l | cut -c 2,5,8`" = "rrr" ]
  then
    echo  $l | cut -d " " -f 9-25 
  fi 
done
echo
rm temp.txt
