//Ejercicio 11 - Estructura secuencial
//Problema: Pide al usuario dos números y muestra la "distancia" entre ellos (el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).
//Entrada: Los dos números que ingresó el usuario.
//Salida: El número que están a distancia.
//Diseño:
//1.Pedirle al usuario que ingrese los dos números.
//2.Comparar la distancia entre ellos.
//3.Mostrar resultados.
Algoritmo Dist_dos_num
	Definir num1, num2 Como Real
	Definir dist Como Entero
	Escribir "Dame el primer número: "
	Leer num1
	Escribir "Dame el segundo número: "
	Leer num2
	dist = abs(num1 - num2)
	Escribir "De ",num1 " a ",num2 " hay ",dist " número(s) de distancia."
FinAlgoritmo