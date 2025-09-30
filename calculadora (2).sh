#!/bin/bash

# Calculadora simples em Bash (inteiros)
echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Escolha a operação (+, -, *, /):"
read op

case $op in
  +) resultado=$((num1 + num2)) ;;
  -) resultado=$((num1 - num2)) ;;
  \*) resultado=$((num1 * num2)) ;;
  /) 
    if [ "$num2" -ne 0 ]; then
      resultado=$((num1 / num2))
    else
      echo "Divisão por zero não é permitida"
      exit 1
    fi
    ;;
  *) echo "Operação inválida"; exit 1 ;;
esac

echo "Resultado: $resultado"
