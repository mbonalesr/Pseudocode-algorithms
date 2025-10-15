//Ejercicio 18 - Estructura condicional
//Problema: Realiza un programa que pida el día de la semana (del 1 al 7) y escriba el día correspondiente. Si introducimos otro número nos da un error.
//Entrada: El nùmero del 1 al 7 que ingrese el usuario (variable entera).
//Salida: El día de la semana (variable de caracteres).
//Diseño
//1.Pedirle al usuario un número del 1 al 7.
//2.Si ingresa un número menor a 1 o mayor a 7, escribir "Error de número".
//3.Si no, asignar segun num a:
//3.1 - 1: imprmir "Lunes".
//3.1 - 2: imprmir "Martes".
//3.1 - 3: imprmir "Mièrcoles".
//3.1 - 4: imprmir "Jueves".
//3.1 - 5: imprmir "Viernes".
//3.1 - 6: imprmir "Sábado".
//3.1 - 7: imprmir "Domingo".
Algoritmo Dia_sem
	Definir num Como Entero
	Imprimir "Ingresa un número del 1 al 7: "
	Leer num
	Si num < 1 O num > 7 Entonces
		Imprimir "Error de número"
	SiNo
		Segun num Hacer
			1: Imprimir "Lunes"
			2: Imprimir "Martes"
			3: Imprimir "Miércoles"
			4: Imprimir "Jueves"
			5: Imprimir "Viernes"
			6: Imprimir "Sábado"
			7: Imprimir "Domingo"
		FinSegun
	FinSi
FinAlgoritmo
