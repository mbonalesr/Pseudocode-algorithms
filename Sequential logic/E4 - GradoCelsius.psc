//Ejercicio 4 - Estructura secuencial
//Problema: Escribir un programa que convierta un valor dado en grados Fahrenheit a grados Celsius. Recordar que la f�rmula para la conversi�n es: C = (F-32)*5/9.
//Entrada: Temperatura en grados Fahrenheit (Variable REAL)
//Salida: Temperatura convertida en grados Celsius. (Variable REAL)
//Dise�o:
//1.Pedirle al usuario que ingrese la temperatura en grados Fahrenheit.
//2.Convertir la temperatura de grados Fahrenheit a grados Celsius.
//3.Mostrar la temperatura en grados Celsius.
Algoritmo GradoCelsius
	Definir F,C Como Real
	Escribir "Dime la temperatura en grados Fahrenheit (�F): "
	Leer F
	C = (F-32)*5/9
	Escribir "La temperatura en grados Celsius es: ", C,"�C"
FinAlgoritmo
