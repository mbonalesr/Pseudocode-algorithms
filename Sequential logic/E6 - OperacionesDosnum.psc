//Ejercicio 6 - Estructura secuencial
//Problema: Dados dos números, mostrar la suma, resta, división y multiplicación de ambos.
//Entrada: Los dos números (Variable real)
//Salida: La suma, resta, división y multiplicación de ambos.
//Diseño:
//1.Pedirle al usuario los dos números.
//2.Realizar operaciones.
//3.Mostrar los diferentes resultados.
Algoritmo OperacionesDosnum
	Definir num1,num2,suma,res,mult,div Como Real
	Escribir "Escribe el primer número: "
	Leer num1
	Escribir "Ahora escribe el segundo número: "
	Leer num2
	suma = num1 + num2
	res = num1 - num2
	mult = num1 * num2
	div = num1 / num2
	Escribir "La suma de ambos números es: ",suma
	Escribir "La resta de ambos números es: ",res
	Escribir "La multiplicación de ambos números es: ",mult
	Escribir "La división de ambos números es: ",div
FinAlgoritmo