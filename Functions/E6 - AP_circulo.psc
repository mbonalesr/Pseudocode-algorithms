// Ejercicio 6 - Funciones
// Problema: Diseñar una función que calcule el área y el perímetro de una circunferencia. Utiliza dicha función en un programa principal que lea el radio de una circunferencia y muestre su área y perímetro.
// Entrada: El radio del círculo ingresado por el usuario (variable real).
// Salida: El área y el perímetro del círculo (variables reales).
// Diseño:
// 1.Crear la función 'A_P_circ' con 'r' como argumento.
// 2.Calcular el área multiplicando pi por 'r' elevado al cuadrado.
// 3.Calcular el perímetro multiplicando 2 por pi por 'r'.
// 4.Mostrar los valores A y de P y salir de  la función.
// 5.En el algoritmo, definiremos la variable 'radio' como real.
// 6.Pedirle al usuario que escriba el 'radio' en cm y leer la variable.
// 7.Llamar a la función 'A_P_circ' y usar 'radio' como argumento.
Funcion A_P_circ(r) 
	A = Pi*(r)^2
	P = 2*Pi*r
	Imprimir "Área del círculo: ",A," cm"
	Imprimir "Perímetro del círculo: ",P," cm"
FinFuncion

Algoritmo Radio_circ
	Definir radio Como Real
	Imprimir Sin Saltar "Dime el radio en (cm): "
	Leer radio
	A_P_circ(radio)
FinAlgoritmo