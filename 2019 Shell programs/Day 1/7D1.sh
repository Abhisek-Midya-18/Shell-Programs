clear
if [ $# -ne 1 ]
then
  echo "Wrong Argument Passing."
  exit
fi
n=$1
t=10
echo
for ((i=n;i>=1;i--))
do
  for ((s=1;s<=t;s++))
  do
    echo -n " "
  done
  let t=t+1
  for ((j=2*i-1;j>=1;j--))
  do
    echo -n "*"
  done 
  echo   
done
echo
