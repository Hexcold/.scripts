#!/bin/bash
read -p "Informe o arquivo: " arq

cat "$arq" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | tr ' ' '\n' | sort | uniq -c | sort -nr |
while read qtd word; do
    echo "$word: $qtd"
done
