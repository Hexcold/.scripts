awk -F',' 'NR == 1 || $2 > max {max = $2; loja = $3} END {print loja}' compras.txt 
