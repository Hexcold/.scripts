#!/bin/bash
temp_a=""
clean(){
    echo "Tarefa Interrompida. Limpando..."
    [ -f "$temp_a" ] && rm -f "$temp_a"
    exit 1
}
trap clean SIGINT
exec_tarefa(){
    local nome="$1"
    local tempo="$2"
    temp_a="${nome}.tmp"
    touch "$temp_a"
    echo "Iniciando tarefa: $nome (PID: $$)"
    sleep "$tempo"
    echo "Tarefa '$nome' concluída com sucesso."
    rm -f "$temp_a"
}
nome_tarefa=""
temp_exec=""
while getopts "n:t:" opt; do
    case $opt in
        n) nome_tarefa="$OPTARG" ;;
        t) tempo_exec="$OPTARG" ;;
        *)
            echo "Uso: $0 -n <nome> -t <tempo (1-15)>"
            exit 1
            ;;
    esac
done
exec_tarefa "$nome_tarefa" "$tempo_exec"
