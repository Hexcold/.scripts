#!/bin/bash

NUM=$1

case $NUM in
 [0-9]|1[0-9]|20)
  case $NUM in
   0)
    echo "O vaor é nulo"
    ;;
   10|20)
     echo "Valor especial"
     ;;
   *)
     echo "Valor é $NUM e não é especial"
     ;;
   esac
   ;;
  *)
   echo "Entrada inválida. Informe um número entre 0 e 20"
   ;;
esac
