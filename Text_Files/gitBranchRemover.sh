line=$(git branch | cut -c 3-)
eval "arr=($line)"
for i in "${arr[@]}"; do 
  if [ -z "$(git log -1 --since='"1 month ago"' -s "$i")" ]; then
    git branch -D $k
    echo true
    echo $i
  fi
    #git log -1 --since='"1 week ago"' -s "$i"
done
