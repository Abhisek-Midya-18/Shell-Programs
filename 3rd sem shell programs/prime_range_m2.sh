echo -n "Enter the lower limit: "
read a
echo -n "Enter the upper limit: "
read b
echo "Prime numbers between $a and $b are..."
i=$a
while [ $i -le $b ]
  do
    x=`factor $i`
    set $x
    if [ $# -eq 2 ]
    then
       echo -n $i" "
    fi
    let i=i+1
  done
echo  
