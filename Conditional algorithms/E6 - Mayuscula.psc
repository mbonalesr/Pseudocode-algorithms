//Ejercicio 6 - Estructura condicional
//Problema: Programa que lea una cadena por teclado y compruebe si es una letra mayúscula.
//Entrada: La cadena de letras, variable de caracteres.
//Salida: Indicar si tiene una letra mayúscula.
//Diseño:
//1.Pedirle al usuario que escriba una palabra o cantidad de caracteres.
//2.Si la cadena contiene mayúscula mostrar "Es mayúscula".
//3.Si no, mostrar "No es mayúscula".
Algoritmo Mayuscula
	Definir cad Como Caracter
	Escribir "Escribe una letra: "
	Leer cad
	Si Mayusculas(cad) = cad Entonces
		Escribir "Tiene mayúsculas"
	SiNo
		Imprimir "No tiene mayúsculas"
	FinSi
FinAlgoritmo
