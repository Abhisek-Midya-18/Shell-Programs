clear
d=0
f=0
for i in `ls`
do
  if [ -d $i ]
  then
    let d=d+1
  elif [ -f $i ]
  then
    let f=f+1
  fi
done
echo "No of File = $f"
echo
echo "No of Directories = $d"
echo 
