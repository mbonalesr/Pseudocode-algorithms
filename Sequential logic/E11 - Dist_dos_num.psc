//Ejercicio 11 - Estructura secuencial
//Problema: Pide al usuario dos n�meros y muestra la "distancia" entre ellos (el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).
//Entrada: Los dos n�meros que ingres� el usuario.
//Salida: El n�mero que est�n a distancia.
//Dise�o:
//1.Pedirle al usuario que ingrese los dos n�meros.
//2.Comparar la distancia entre ellos.
//3.Mostrar resultados.
Algoritmo Dist_dos_num
	Definir num1, num2 Como Real
	Definir dist Como Entero
	Escribir "Dame el primer n�mero: "
	Leer num1
	Escribir "Dame el segundo n�mero: "
	Leer num2
	dist = abs(num1 - num2)
	Escribir "De ",num1 " a ",num2 " hay ",dist " n�mero(s) de distancia."
FinAlgoritmo