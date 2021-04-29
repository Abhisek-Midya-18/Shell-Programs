echo
if [ $# -ne 1 ]
then
  echo "Wrong Argument Passing."
  echo
  exit
fi
n=$1
for (( i=n;i>=1;i-- ))
do
  for (( space=2*n-i;space>=i;space-- ))
  do
    echo -n " "
  done
  for (( j=1;j<=2*i-1;j++ )) 
  do
    echo -n "* "
  done
  echo
done
echo 
