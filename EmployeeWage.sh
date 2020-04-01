#!/bin/bash -x

#Use Case1
echo "Welcome Employees"
attendance () 
{
	a=$((RANDOM % 2 + 1))
	if [ $a -eq 1 ]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi
}
#Use Case2
hr=8
wage=20
dailywage=0
dailywage() 
{
dailywage=$(($wage * $hr))
echo "Daily Employee Wage is $dailywage"
}
#Use Case3
parttime=0
parttimewage() 
{
time=$(($hr / 2))
parttime=$(($time * $wage))
echo "Part time Employee Wage is $parttime"
}
Use Case4
echo -e "1.attendance\n2.dailywage\n3.parttime wage"
read choice
case $choice in
"1" )
	attendance
	;;
"2" )
	dailywage
	;;
"3" )
	parttimewage
	;;
"*" )
	echo "Invalid choice"
	;;
esac
Use Case5
monthwage=0
monthwage()
{
day=20
monthwage=$(($dailywage * $day))
echo "Wage for month is $monthwage"
}
h=0
day=0
wage=20
total=0
while [ $h -lt 100 ] && [ $day -lt 20 ]
do
	a=$((RANDOM % 2 + 1))
	if [ $a -eq 1 ]
	then
		h=$(($hr + $h))
		total=$(($h * $wage))
	else
		h=$(($(($hr / 2)) + $h))
		total=$(($h * $wage))
	fi
done
if [ $h -eq 100 ]
then
	echo $total
else
	echo $monthwage
fi
echo "Monthly Wage hours $h"
echo "Part time wage hours $(($h / 2))"
for ((i=1; i<=20; i++))
do
	arr[$i,0]=$dailywage
	arr[$i,1]=$monthwage
done

for ((i=1; i<=20; i++))
do
        echo "daily wage are ${arr[$i,0]} : monthly wage are ${arr[$i,1]}"
done
j=1
for ((i=1; i<=60; ))
do
	a=$((RANDOM%3))
	if [ $1 -eq 0 ]
	then
		arr1[$i]=$j
		arr1[$(($i + 1))]=0
		arr1[$(($i + 2))]=$monthwage
	elif [ $a -eq 1 ]
	then
		arr1[$i]=$j
		arr1[$(($i + 1))]=$dailywage
		arr1[$(($i + 2))]=$monthwage
	else
		arr1[$i]=$j
		arr1[$(($i + 1))]=$parttime
		arr1[$(($i + 2))]=$monthwage
	fi
	i=$(($i + 3))
	j=$(($j + 1))
done

for ((i=1; i<=60; ))
do
	echo "Day :${arr1[$i]} Wage :${arr1[$((i + 1))]} Total Wage :${arr1[$(($i + 2))]}"
	i=$(($i + 3))
done
attendance
dailywage
parttimewage
monthwage
