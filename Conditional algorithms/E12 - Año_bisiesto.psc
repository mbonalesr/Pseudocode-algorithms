//Ejercicio 12 - Estructura condicional
//Problema: Escribir un programa que lea un año indicar si es bisiesto. Nota: un año es bisiesto si es un número divisible por 4, pero no si es divisible por 100, excepto que también sea divisible por 400.
//Entrada: El año que introduzca el usuario como variable entera. 
//Salida: La indicaciòn de si es año bisiesto o no.
//Diseño:
//1. Pedirle al usuario que ingrese cualquier año (variable 'año').
//2. Si año % 4 = 0 entonces es bisiesto.
//3. Si no, no es bisiesto.
//4. Si año % 100 = 0 Y año % 400 = 0, si es bisiesto
//5. Si no, no es bisiesto.
//6. Mostrar resultados.
Algoritmo Año_bisiesto
	Definir año Como Entero
	Imprimir "Escribe cualquier año: "
	Leer año
	Si año % 4 = 0 Entonces
		Si año % 100 <> 0 O año % 400 = 0 Entonces
			Imprimir "Es año bisiesto."
		SiNo
			Imprimir "No es año bisiesto."
		FinSi
	SiNo
		Imprimir "No es año bisiesto."
	FinSi
FinAlgoritmo
