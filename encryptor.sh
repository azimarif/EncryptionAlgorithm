#! /bin/bash

encryptedData=$(cat $1 | sed 's/0/zero/g; s/1/one/g; s/2/two/g; s/3/three/g; s/4/four/g;')
encryptedData=$(echo $encryptedData | sed 's/5/five/g; s/6/six/g; s/7/seven/g; s/8/eight/g; s/9/nine/g;')
encryptedData=$(echo $encryptedData| tr '[:lower:]' '[:upper:]' | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' 'POLKIMJUNHYBGTVFRCDEXSWZAQ')
encryptedData=$(echo $encryptedData | sed 's/[^A-Z]//g;s/\\n//g')



echo $encryptedData
