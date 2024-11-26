#!/bin/bash

#read user input
echo  " enter the input of characters"

#read exactly 4 char input
#read -n 4 input

read  input


#convert the entered input into an array

char_array=()

#split the one line input into seperate character and store each char in an array
#${#input} = to get the input length
for(( j=0; j<${#input}; j++ )); do
	char_array+=("${input:$j:1}")
done

#print array elements
for c in "${char_array[@]}"; do
	echo -e "\n$c"
done

#find the position of the specified character

pos=-1 #array starts from 0
while true; do
echo "enter the required character"
read req_char
for(( i=0; i<${#char_array[@]}; i++)); do  #${#char_array[@]} --> to get the length of the char_array
	if [[ "${char_array[i]}" == "$req_char" ]]; then
		pos=$i
		break #once the req char is found, exit from the loop
	fi
done



if [[ $pos -ne -1 ]]; then
	echo " the character $req_char is at the position $((pos+1))"  #array index starts from 0, so for accuracy of pos, add +1
else
	echo " character not found"
fi

done
