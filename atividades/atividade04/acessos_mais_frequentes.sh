cut -f1 -d',' acessos.log | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}'
