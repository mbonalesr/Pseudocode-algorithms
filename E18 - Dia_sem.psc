//Ejercicio 18 - Estructura condicional
//Problema: Realiza un programa que pida el d�a de la semana (del 1 al 7) y escriba el d�a correspondiente. Si introducimos otro n�mero nos da un error.
//Entrada: El n�mero del 1 al 7 que ingrese el usuario (variable entera).
//Salida: El d�a de la semana (variable de caracteres).
//Dise�o
//1.Pedirle al usuario un n�mero del 1 al 7.
//2.Si ingresa un n�mero menor a 1 o mayor a 7, escribir "Error de n�mero".
//3.Si no, asignar segun num a:
//3.1 - 1: imprmir "Lunes".
//3.1 - 2: imprmir "Martes".
//3.1 - 3: imprmir "Mi�rcoles".
//3.1 - 4: imprmir "Jueves".
//3.1 - 5: imprmir "Viernes".
//3.1 - 6: imprmir "S�bado".
//3.1 - 7: imprmir "Domingo".
Algoritmo Dia_sem
	Definir num Como Entero
	Imprimir "Ingresa un n�mero del 1 al 7: "
	Leer num
	Si num < 1 O num > 7 Entonces
		Imprimir "Error de n�mero"
	SiNo
		Segun num Hacer
			1: Imprimir "Lunes"
			2: Imprimir "Martes"
			3: Imprimir "Mi�rcoles"
			4: Imprimir "Jueves"
			5: Imprimir "Viernes"
			6: Imprimir "S�bado"
			7: Imprimir "Domingo"
		FinSegun
	FinSi
FinAlgoritmo
