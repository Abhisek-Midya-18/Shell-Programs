echo -n "Enter the input base: "
read ib
echo -n "Enter the output base: "
read ob
echo -n "Enter the number: "
read n
n=$(echo $n | tr '[a-z]' '[A-Z]')
x=$(echo "obase=$ob;ibase=$ib;$n" | bc)
echo "The result is: "$x
