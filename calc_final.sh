#!/bin/bash

# Función para la suma
suma() {
    local sum=0
    for i in $@
    do
        sum=$((sum+i))
    done
    echo $sum
}

# Función para la resta
resta() {
    local res=$1
    shift
    for i in $@
    do
        res=$((res-i))
    done
    echo $res
}

# Función para la multiplicación
multiplicacion() {
    local mul=1
    for i in $@
    do
        mul=$((mul*i))
    done
    echo $mul
}

# Función para el menú
echo "Bienvenido a la calculadora, por favor seleccione una opción"
menu() {
    echo "Seleccione la opción para operar"
    echo "1. Suma"
    echo "2. Resta"
    echo "3. Multiplicación"
    echo "4. Salir"
}

# Ciclo para el menú
while true
do
    menu
    read -p "Ingrese una opción: " opcion
    
    case $opcion in
        1)  read -p "Ingrese los números separados por un espacio: " numeros
            resultado=$(suma $numeros)
            echo "El resultado de la suma es: $resultado"
            ;;
        2)  read -p "Ingrese los números separados por un espacio: " numeros
            read -p "Ingrese el número para restar: " num
            resultado=$(resta $num $numeros)
            echo "El resultado de la resta es: $resultado"
            ;;
        3)  read -p "Ingrese los números separados por un espacio: " numeros
            resultado=$(multiplicacion $numeros)
            echo "El resultado de la multiplicación es: $resultado"
            ;;
        4)  echo "Saliendo de la calculadora, gracias. Calculadora realizada por Suarez Linares José Miguel"
        
            exit 0
            ;;
           
        *)  echo "Opción no válida"
            ;;
    esac
done
