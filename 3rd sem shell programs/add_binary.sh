echo -n "Enter the first number (in binary form): "
read a
echo -n "Enter the second number (in binary form): "
read b
x=$(echo "obase=2;ibase=2;$a+$b" | bc)
echo "Sum of $a and $b in binary form is $x"
