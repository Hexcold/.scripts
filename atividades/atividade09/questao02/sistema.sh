#!/bin/bash
tput clear
menu(){
    echo "Selecione uma das opcoes abaixo:"
    echo "1 : Tempo ligado do sistema"
    echo "2 : As 10 últimas mensagens do Kerne"
    echo "3 : Estatísticas de memória virtual"
    echo "4 : Uso da CPU por núcleo "
    echo "5 : Uso da CPU por processo"
    echo "6 : Uso da memória física em MB"
    echo "7 : Sair"
}

while true
do
    tput clear
    menu
    read -r escolha

    return_message="pressione enter para voltar ao menu..."

    case $escolha in
        1)
            tput clear
            uptime
            read -n 1 -p "$return_message"
            ;;
        2)
            tput clear
            sudo dmesg | tail -n 10
            read -n 1 -p "$return_message" 
            ;;
        3)
            tput clear
            vmstat 1 10
            read -n 1 -p "$return_message"
            ;;
        4)
            tput clear
            mpstat -P ALL 1 5
            read -n 1 -p "$return_message" 
            ;;
        5)
            tput clear
            pidstat 1 5
            read -n 1 -p "$return_message" 
            ;;
        6)
            tput clear
            free -m 
            read -n 1 -p "$return_message"
            ;;
        7)
            tput clear
            exit
            read -n 1 -p "$return_message"
            ;;
        *)
            tput clear
            echo "digite uma das opcoes do menu"
            sleep 1.5
            echo "voltando ao menu"
            sleep 1.5
    esac
done