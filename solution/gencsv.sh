#!/bin/bash
COUNT=$1
re='^[0-9]+$'

gen_csv_10 ()
{
	for index in {0..9}
	do
		echo "$index, $RANDOM" >> inputFile
	done
}

gen_csv ()
{
	for (( index = 0; index < $COUNT; index++ )) 
	do
	    echo "$index, $RANDOM" >> inputFile
	done	
}

if [[ "$COUNT" == "" ]]
then
	gen_csv_10
elif [[ $COUNT =~ $re ]]
then
    gen_csv
else
  echo "Invalid input"
  exit 1
fi
