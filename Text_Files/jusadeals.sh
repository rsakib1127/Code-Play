echo hello

token=$(lsof -i:3000)


if [[ "$token" -eq "" ]]
     then
     echo "Critical"
     node Desktop/Work\ Station/node.js/authmodule/src/index.js
     # node JusaDealsBackend/src/index.js

else
     echo "Warning"
fi




