//Ejercicio 11 - Estructura condicional
//Problema: Programa que lea 3 datos de entrada A, B y C. Estos corresponden a las dimensiones de los lados de un triángulo. El programa debe determinar que tipo de triangulo es, teniendo en cuenta los siguiente:
//- Si se cumple Pitágoras entonces es triángulo rectángulo
//- Si sólo dos lados del triángulo son iguales entonces es isósceles.
//- Si los 3 lados son iguales entonces es equilátero.
//- Si no se cumple ninguna de las condiciones anteriores, es escaleno.
//Entrada: Las dimensiones del triángulo A,B,C, variable real.
//Salida: El tipo de triángulo que es, variable de carácteres.
//Diseño:
//1.Pedirle al usuario que ingrese los valores A,B,C.
//2.Si C = raiz((A)^2 + (B)^2) entonces es triángulo rectángulo.
//3.Si A = B O B = C O A = C entonces es triángulo isóceles.
//4.Si A = B Y B = C Y A = C entonces es triángulo equilátero.
//5.Si no cumple ninguna condición de arriba es triángulo escaleno.
Algoritmo Triángulos
	Definir A,B,C Como Real
	Escribir "Dame el lado A del triángulo: "
	Leer A
	Escribir "Dame el lado B del triángulo: "
	Leer B
	Escribir "Dame el lado C del triángulo: "
	Leer C
	
	Si C = raiz((A)^2 + (B)^2) Entonces
		Imprimir "Es un triángulo rectángulo"
	SiNo
		Si (A = B) Y (B = C) Y (A = C) Entonces
			Imprimir "Es un triángulo equilátero"
		SiNo
			Si (A = B) O (B = C) O (A = C) Entonces
				Imprimir "Es un triángulo isóceles"
			SiNo
				Imprimir "Es un triángulo escaleno"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
