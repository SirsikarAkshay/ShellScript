#!/bin/bash -

array=(1 2 3 4 5 6 7 8)
echo "Array is ${array[@]}"

if [ "${#array[@]}" -lt 2 ]
then
	echo "Not large enough"
	exit 1
fi

largest=${array[1]}
secLargest='unset'
secSmallest='unset'
smallest=${array[0]}

for (( i=1; i<${#array[@]}; i++ ))
do
	if [[ ${array[i]} -gt $largest ]]
	then
		secLargest=$largest
		largest=${array[i]}
	elif (( ${array[i]} != $largest )) && { [[ "$secLargest" -eq "unset" ]] || [[ ${array[i]} -gt $secLargest ]]; }
	then
		secLargest=${array[i]}
	fi

	if [[ ${array[i]} -lt $smallest ]]
	then
		secSmallest=$smallest
		smallest=${array[i]}
	elif (( ${array[i]} != $smallest )) && { [[ "$secSmallest" -eq "unset" ]] || [[ ${array[i]} -lt $secSmallest ]]; }
	then
		secSmallest=${array[i]}
	fi
done
echo "Second largest = $secLargest"
echo "Second Smallest = $secSmallest"

