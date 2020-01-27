#!/bin/bash -x
#Reading value from user
declare -A resultDictionary
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
result1=`echo "$a+$b*$c" | bc`
result2=`echo "$a*$b+$c" | bc`
result3=`echo "scale=2;$c+$a/$b" | bc`
result4=`echo "$a%$b+$c" | bc`

resultDictionary[result1]=$result1
resultDictionary[result2]=$result2
resultDictionary[result3]=$result3
resultDictionary[result4]=$result4

for((counter=1;counter<=${#resultDictionary[@]};counter++))
do
	resultArray[$counter]=${resultDictionary[result"$((counter))"]}
done

echo ${resultArray[@]}
length=${#resultArray[@]}
echo $length
#Descending Order
function descendingOrder() {
	for((i=1;i<$length;i++))
	do
		for((j=i+1;j<=$length;j++))
		do
			if [[ ${resultArray[i]%.*} -lt ${resultArray[j]%.*} ]]
			then
				temp=${resultArray[i]}
				resultArray[i]=${resultArray[j]}
				resultArray[j]=$temp
			fi
		done
	done
	echo ${resultArray[@]}
}

echo "Descending Order"
descendingOrder
