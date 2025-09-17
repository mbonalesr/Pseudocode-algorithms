//Ejercicio 11 - Estructura condicional
//Problema: Programa que lea 3 datos de entrada A, B y C. Estos corresponden a las dimensiones de los lados de un tri�ngulo. El programa debe determinar que tipo de triangulo es, teniendo en cuenta los siguiente:
//- Si se cumple Pit�goras entonces es tri�ngulo rect�ngulo
//- Si s�lo dos lados del tri�ngulo son iguales entonces es is�sceles.
//- Si los 3 lados son iguales entonces es equil�tero.
//- Si no se cumple ninguna de las condiciones anteriores, es escaleno.
//Entrada: Las dimensiones del tri�ngulo A,B,C, variable real.
//Salida: El tipo de tri�ngulo que es, variable de car�cteres.
//Dise�o:
//1.Pedirle al usuario que ingrese los valores A,B,C.
//2.Si C = raiz((A)^2 + (B)^2) entonces es tri�ngulo rect�ngulo.
//3.Si A = B O B = C O A = C entonces es tri�ngulo is�celes.
//4.Si A = B Y B = C Y A = C entonces es tri�ngulo equil�tero.
//5.Si no cumple ninguna condici�n de arriba es tri�ngulo escaleno.
Algoritmo Tri�ngulos
	Definir A,B,C Como Real
	Escribir "Dame el lado A del tri�ngulo: "
	Leer A
	Escribir "Dame el lado B del tri�ngulo: "
	Leer B
	Escribir "Dame el lado C del tri�ngulo: "
	Leer C
	
	Si C = raiz((A)^2 + (B)^2) Entonces
		Imprimir "Es un tri�ngulo rect�ngulo"
	SiNo
		Si (A = B) Y (B = C) Y (A = C) Entonces
			Imprimir "Es un tri�ngulo equil�tero"
		SiNo
			Si (A = B) O (B = C) O (A = C) Entonces
				Imprimir "Es un tri�ngulo is�celes"
			SiNo
				Imprimir "Es un tri�ngulo escaleno"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
