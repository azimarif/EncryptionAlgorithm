#! /usr/bin/awk
{
  line=tolower($0)
  gsub(/[^[:alnum:]^[:blank:]]*/,"",line)
  numbers="zero,one,two,three,four,five,six,seven,eight,nine"
  split(numbers,numberArray,",")
  for(i=1;i<=10;i++){
    gsub(i-1,numberArray[i],line)
  }
  alphabets="abcdefghijklmnopqrstuvwxyz"
  firstKey="qwertyuiopasdfghjklzxcvbnm"
  fourthKey="plokimjunhybgtvfrcdexswzaq"
  split(alphabets, alphabetsArray, "")
  split(firstKey, firstKeyArray, "")
  split(fourthKey,fourthKeyArray,"")

  split(line,actualLine,"")
  print actualLine[4]
  for(i=1;i<=length(actualLine);i++){
    if(i%2==0){
      for(j=1;j<=length(firstKeyArray);j++){
        if(actualLine[i]==alphabetsArray[j]){
          actualLine[i]=firstKeyArray[j]
          break
        }

      }
    }
    else{
      for(j=1;j<=length(fourthKeyArray);j++){
        if(actualLine[i]==fourthKeyArray[j]){
          actualLine[i]=fourthKeyArray[j]
          break
        }    
      }}
      lines=lines""actualLine[i]
    }
  }

  END{
    print lines
  }
