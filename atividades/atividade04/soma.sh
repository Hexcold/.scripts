cut -f2 -d"," compras.txt | awk '{soma += $1} END {print soma}'
