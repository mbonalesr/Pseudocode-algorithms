// Ejercicio 4 - Estructura repetitiva
// Problema: Realizar un algoritmo que pida n�meros (se pedir� por teclado la cantidad de n�meros a introducir). El programa debe informar de cuantos n�meros introducidos son mayores que 0, menores que 0 e iguales a 0.
// Entrada: La cantidad de n�meros a introducir y los n�meros como tal (variable entera y real).
// Salida: La cantidad de n�meros mayores, menores e iguales a 0 (variable real).
// Dise�o:
// 1.Pedirle al usuario que escriba la cantidad de n�meros que quiere.
// 2.Hacer un para i = 0, que vaya de 0 a la cant_num.
// 3.Dentro de el, poner un si, uno donde num > 0, que se agregue a una variable 'mayores'.
// 4.Dentro de el, poner un si, uno donde num < 0, que se agregue a una variable 'menores'.
// 5.Dentro de el, poner un si, uno donde num = 0, que se agregue a una variable 'iguales'.
// 6.Mostrar cada variable al final.
Algoritmo Cant_num
	Definir cant, num, may, men, igu Como Entero
	may = 0
	men = 0
	igu = 0
	Escribir 'Escribe la cantidad de n�meros a introducir: 'Sin Saltar
	Leer cant
	Para i = 0 Hasta cant-1 Hacer
		Escribir 'Escribe un n�mero: 'Sin Saltar
		Leer num
		Si num > 0 Entonces
			may = may + 1
		FinSi
		
		Si num < 0 Entonces
			men = men + 1
		FinSi
		
		Si num = 0 Entonces
			igu = igu + 1
		FinSi
	FinPara
	Escribir 'N�meros mayores que 0: ', may
	Escribir 'N�meros menores que 0: ', men
	Escribir 'N�meros iguales que 0: ', igu
FinAlgoritmo
