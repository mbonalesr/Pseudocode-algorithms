//Ejercicio 21 - Estructura condicional
//Problema: Pide al usuario su edad.
//- Si tiene 18 años o más, imprime: "Eres mayor de edad."
//- Si tiene menos de 18, imprime: "Eres menor de edad."
//- Si escribe un valor negativo, imprime: "Edad no válida."
//Entrada: La edad del usuario (variable entera).
//Salida: El mensaje según sea el caso (variable de caracteres).
//Diseño:
//1.Pedirle al usuario que ingrese su edad.
//2.Si edad < 0 entonces escribir "Edad no válida."
//2.1: Si edad >= 18 entonces escribir "Eres mayor de edad"
//2.2: Si no, escribir "Eres menor de edad"
Algoritmo Edad
	Definir año Como Entero
	Imprimir "Escribe tu edad real (en años): "
	Leer año
	Si año < 0 Entonces
		Imprimir "Edad no válida"
	SiNo
		Si año >= 18 Entonces
			Imprimir "Eres mayor de edad"
		SiNo
			Imprimir "Eres menor de edad"
		FinSi
	FinSi
FinAlgoritmo
