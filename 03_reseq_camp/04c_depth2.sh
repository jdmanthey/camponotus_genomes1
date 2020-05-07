# break up the depth files into single column files for each individual (locations dropped)

while read -r name1 number1; do
	number2=$((number1 + 2));
  cut camp_coverage.txt -f $number2 > ${name1}_depth.txt;
done < camp_popmap.txt
