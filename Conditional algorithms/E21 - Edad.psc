//Ejercicio 21 - Estructura condicional
//Problema: Pide al usuario su edad.
//- Si tiene 18 a�os o m�s, imprime: "Eres mayor de edad."
//- Si tiene menos de 18, imprime: "Eres menor de edad."
//- Si escribe un valor negativo, imprime: "Edad no v�lida."
//Entrada: La edad del usuario (variable entera).
//Salida: El mensaje seg�n sea el caso (variable de caracteres).
//Dise�o:
//1.Pedirle al usuario que ingrese su edad.
//2.Si edad < 0 entonces escribir "Edad no v�lida."
//2.1: Si edad >= 18 entonces escribir "Eres mayor de edad"
//2.2: Si no, escribir "Eres menor de edad"
Algoritmo Edad
	Definir a�o Como Entero
	Imprimir "Escribe tu edad real (en a�os): "
	Leer a�o
	Si a�o < 0 Entonces
		Imprimir "Edad no v�lida"
	SiNo
		Si a�o >= 18 Entonces
			Imprimir "Eres mayor de edad"
		SiNo
			Imprimir "Eres menor de edad"
		FinSi
	FinSi
FinAlgoritmo
