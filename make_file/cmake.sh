#!/bin/bash
#purpose of this file: test auto generating make files
#Date: 2021-07-11
#---------------------------------

#check if an arguments were passed in
if [ "$#" -eq 0 ]; then
    echo 'USAGE: template -make <files to compile.cpp>'
    exit 1;
fi

#ask for the output object name
echo 'what will be the output file name'
read OUTPUT

echo -e "#purpose of the file: to compile $OUTPUT
#date: <date>
#-------------------------------------------------
" > 'makefile'

for CURRENT in $@; do
    if [[ $CURRENT == "*.h" ]]; then
        echo "$CURRENT ignored"
        continue
    fi

    #gets rid of extension on files passed in and store in array
    FILE+=$(echo "$CURRENT" | cut -d '"' -f2 | cut -d '.' -f1)
done

#add first rule
printf "$OUTPUT: " >> makefile

for CURRENT in ${FILE[@]}; do
    printf "$CURRENT.cpp " >> makefile

    #check if .h file exist
    if [[ -f "$CURRENT.h" ]]; then
        #if .h file exist, add to make file
        printf "$CURRENT.h" >> makefile
    fi
done
printf "\n" >> makefile

#add command for first rule
printf "\t g++ -Wall -g " >> makefile
for CURRENT in ${FILE[@]}; do
    printf "$CURRENT.cpp" >> makefile
done
printf " && ./$OUTPUT | tee output.txt\n\n" >> makefile

#add clean rule
printf "clean:\n\trm -f *.o $OUTPUT\n\n" >> makefile

#add mem check rule
printf "memory: $OUTPUT\n\tvalgrind -s --leak-check=full --track-origins=yes ./$OUTPUT\n\n" >> makefile
