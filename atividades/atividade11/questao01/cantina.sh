#!/bin/bash

NOME=$(dialog --stdout --inputbox "Digite seu nome:" 0 0)

RET=$?

if [ $RET -ne 0 ] || [ -z "$NOME" ]; then
    dialog --msgbox "Erro: Nome inválido ou operação cancelada." 0 0
    exit 1
fi

PRATO=$(dialog --stdout --menu "Escolha o prato principal:" 0 0 0 \
    "Hamburguer" "" \
    "Pizza" "" \
    "Pastel" "")


if [ $? -ne 0 ]; then
    dialog --msgbox "Pedido Cancelado." 0 0
    exit 1
fi

ADICIONAIS=$(dialog --stdout --checklist "Escolha adicionais/bebidas:" 0 0 0 \
    "Refrigerante" "" off \
    "Suco" "" off \
    "Batata Frita" "" off \
    "Molho Extra" "" off)


if [ $? -ne 0 ]; then
    dialog --msgbox "Pedido Cancelado." 0 0
    exit 1
fi 

dialog --stdout --yesno "O seu pedido está correto?" 0 0
if [ $? -ne 0 ]; then
    dialog --msgbox "Pedido Cancelado." 0 0
    exit 0
fi


dialog --msgbox "RECIBO\n\nCliente: $NOME\nPrato: $PRATO\nAdicionais: $(echo $ADICIONAIS | sed 's/\"//g' | tr ' ' '\n' | paste -sd ', ' -)" 0 0

exit 0
