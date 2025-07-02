//Ejercicio 15 - Estructura secuencial
//Problema: Dadas dos variables numéricas A y B, que el usuario debe teclear, se pide realizar un algoritmo que intercambie los valores de ambas variables y muestre cuanto valen al final las dos variables.
//Entrada: Variables numéricas reales A y B.
//Salida: Valores númericas reales A y B invertidos.
//Diseño:
//1.Pedirle al usuario los valores de A y B.
//2.Mediante variables intermedias intercambiar el valor de A con el de B y viceversa.
//3.Mostrar resultados.
Algoritmo Intercambio_variables
	Definir A,B,temp Como Real
	Escribir "Escribe el valor de A: "
	Leer A
	Escribir "Escribe el valor de B: "
	Leer B
	temp = A
	A = B
	B = temp
	Escribir "El nuevo valor de A es: ",A
	Escribir "El nuevo valor de B es: ",B
FinAlgoritmo