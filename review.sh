read a
read b
read c

operation1=$((a+b*c))
operation2=$((a*b+c))
operation3=$((c+a/b))
operation4=$((a%b+c))
echo $operation1
echo $operation2
echo $operation3
echo $operation4

declare -A num
num[operation1]=$operation1
num[operation2]=$operation2
num[operation3]=$operation3
num[operation4]=$operation4
a=(${num[operation1]} ${num[operation2]} ${num[operation3]} ${num[operation4]})

echo ${a[@]}

for ((j=0;j<4;j++))
do
        	for ((i=0;i<4-j-1;i++))
	do
        	if [ ${a[i]} -gt ${a[$((i+1))]} ]
        	then
                	temp=${a[i]}
                	a[$i]=${a[$((i+1))]}
                	a[$((i+1))]=$temp
        fi

	done

done

echo ${a[@]}

for ((j=0;j<4;j++))
do

                 for ((i=0;i<4-j-1;i++))
        do
                if [ ${a[i]} -lt ${a[$((i+1))]} ]
                then
                        temp=${a[i]}
                        a[$i]=${a[$((i+1))]}
                        a[$((i+1))]=$temp
                fi

        done

done

echo ${a[@]}
