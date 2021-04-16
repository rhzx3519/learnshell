#!/bin/bash
for i in $@; do
	echo $i
done

for((i=0; i<5; i++)); do
	echo $i
done

for i in {1..5}; do
	echo $i
done	

while [ "$ans" != "yes" ]
do
	read -p "please input yes to stop loop:" ans
done
