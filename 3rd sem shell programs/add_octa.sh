echo -n "Enter the first number (in octal form): "
read a
echo -n "Enter the second number (in octal form): "
read b
x=$(echo "obase=8;ibase=8;$a+$b" | bc)
echo "Sum of $a and $b in octal form is $x"
