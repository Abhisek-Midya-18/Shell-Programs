echo -n "Enter the first number (in hexa decimal form): "
read a
echo -n "Enter the second number (in hexa decimal form): "
read b
a=$(echo $a | tr '[a-z]' '[A-Z]')
b=$(echo $b | tr '[a-z]' '[A-Z]')
x=$(echo "obase=16;ibase=16;$a+$b" | bc)
echo "Sum of $a and $b in hexa decimal form is $x"
