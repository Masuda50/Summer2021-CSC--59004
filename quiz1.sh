#!/bin/sh

# Shell script -- (assuming we are in the same directory as the files created above and directory only contains these files)

for f in *;

if [ "$(f:-4)" == ".txt"]

then 

mv f "new_$(f::-4).txt"

elif  [ "$(f:-4)" == ".bak"]

then

rm f 

else 

      if (wc -1 < f ) < 10 

      then 

      mv f "short_$(f::-3).py"

      else 

      mv f "long_$(f::-3).py"

      fi 

fi


