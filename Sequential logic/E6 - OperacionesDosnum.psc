//Ejercicio 6 - Estructura secuencial
//Problema: Dados dos n�meros, mostrar la suma, resta, divisi�n y multiplicaci�n de ambos.
//Entrada: Los dos n�meros (Variable real)
//Salida: La suma, resta, divisi�n y multiplicaci�n de ambos.
//Dise�o:
//1.Pedirle al usuario los dos n�meros.
//2.Realizar operaciones.
//3.Mostrar los diferentes resultados.
Algoritmo OperacionesDosnum
	Definir num1,num2,suma,res,mult,div Como Real
	Escribir "Escribe el primer n�mero: "
	Leer num1
	Escribir "Ahora escribe el segundo n�mero: "
	Leer num2
	suma = num1 + num2
	res = num1 - num2
	mult = num1 * num2
	div = num1 / num2
	Escribir "La suma de ambos n�meros es: ",suma
	Escribir "La resta de ambos n�meros es: ",res
	Escribir "La multiplicaci�n de ambos n�meros es: ",mult
	Escribir "La divisi�n de ambos n�meros es: ",div
FinAlgoritmo