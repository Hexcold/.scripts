#!/bin/bash

USUARIO=$(whoami)

DIA=$(date +%d)

MES=$(date +%m)

ANO=$(date +%Y)

SAUDACAO="Olá $USUARIO, Hoje é dia $DIA, do mês $MES do ano de $ANO."

echo -e "$SAUDACAO"

echo -e "$SAUDACAO\n" >> saudacao.log
