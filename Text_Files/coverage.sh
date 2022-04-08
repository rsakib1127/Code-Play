coverage run -m pytest test.py
result=$(coverage report -m | grep TOTAL )
read -a strarr <<< "$result"
cov="${strarr[3]}"
res=$(echo $cov | tr -d %)
if [ $res -gt 80 ]
     then
     echo "greater"
     else
     echo "not greater"
fi
