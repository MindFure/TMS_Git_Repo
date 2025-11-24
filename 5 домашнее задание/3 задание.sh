#!/bin/bash
text=$1;

start_index=$2;
end_index=$3;

lenght_text=${#text};

for (( i = 0; i < lenght_text; i++ )); do
	echo "$i"
done

for (( i = start_index; i <= end_index; i++ )); do
	diap="$diap $i"
done

diap=${diap# }

echo "$diap"

for (( i = 0; i < ${#text}; i++ )); do
	if [[ $i -lt $start_index || $i -gt $end_index ]]; then
		new_string+="${text:i:1}"
	fi
done

echo "$new_string"
