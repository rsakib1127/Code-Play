while getopts c:w:e: flag
do
    case "${flag}" in
        c) critical_threshold=${OPTARG};;
        w) warning_threshold=${OPTARG};;
        e) email=${OPTARG};;
    esac
done

echo $email
if [ -z "$critical_threshold" ] || [ -z "$warning_threshold" ] || [ -z "$email" ]
then
     echo "email, critical threshold and warning threshold are not given. Example: ./memory_check.sh -c 90 -w 60 -e demo@email.com"
     
fi

if [ $critical_threshold -gt $warning_threshold ]
     then
     echo "critical and waring threshold are ok"
     else
     echo "Wrong values are inputed"
fi

result=$( free | grep Mem:)

read -a strarr <<< "$result"

total=${strarr[1]}
used=${strarr[2]}
free=${strarr[3]} 
result=$(echo "$used/$total" |  awk -F "/" '{print ($1/$2)}')

result=$(echo "$result*100" |  awk -F "*" '{print ($1*$2)}')
echo "Current Memory usage is $result%"

printf -v result '%d\n' $result 2>/dev/null


if [[ "$result" -gt "$(($critical_threshold))" ]]
     then
     echo "Critical"
     echo $(sendmail $email  < email.txt)


elif [[ "$result" -gt "$warning_threshold" ]]
     then
     echo "Warning"
fi


