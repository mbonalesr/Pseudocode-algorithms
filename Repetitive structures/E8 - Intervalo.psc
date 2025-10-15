// Ejercicio 8 - Estructura repetitiva
// Problema: Escribe un programa que pida el limite inferior y superior de un intervalo. Si el límite inferior es mayor que el superior lo tiene que volver a pedir. A continuación se van introduciendo números hasta que introduzcamos el 0. Cuando termine el programa dará las siguientes informaciones:
// - La suma de los números que están dentro del intervalo (intervalo abierto).
// - Cuantos números están fuera del intervalo.
// - He informa si hemos introducido algún número igual a los límites del intervalo.
// Entrada: Los dos valores del intervalo que elijamos (variables enteras).
// Salida: La suma de los números de ese intervalo (variable entera), los números fuera del intervalo (variable entera), los números iguales a los del intervalo (variable entera)
// Diseño:
// 1.Hacer un repetir hasta que sup > inf
// 2.Pedirle al usuario que escriba el limite inferior 'inf' y el limite superior 'sup', y leerlos
// 3.Hacer un mientras num <> 0
// 4.Dentro de ella, pedirle al usuario que ingrese cualquier numero e irlo sumando mediante la variable 'suma = suma + num'
// 5.Si num <> inf o sup, entonces 'fuera = fuera + 1', inicializarla en el mientras
// 6.Si num = inf o sup, guardarla en la variable 'igual = igual + 1'
// 7.Mostrar resultados
Algoritmo Intervalo
	Definir inf,sup,num,suma,fuera,igu Como Entero
	suma = 0
	fuera = 0
	igu = 0
	num = 1
	Repetir
		Imprimir Sin Saltar "Escribe el límite inferior: "
		Leer inf
		Imprimir Sin Saltar "Ahora el límite superior: "
		Leer sup
	Hasta Que sup > inf
		
	Mientras num <> 0 Hacer
		Imprimir Sin Saltar "Escribe cualquier número: "
		Leer num
		suma = suma + num
		Si num < inf O num > sup Entonces
			fuera = fuera + 1
			suma = suma - num
		FinSi
		Si num = sup O num = inf Entonces
			igu = igu + 1
		FinSi
	FinMientras
	Imprimir "La suma de los números que están dentro del intervalo es: ",suma
	Imprimir "Hay ",fuera," números fuera del intervalo"
	Imprimir "Has introducido ",igu," números iguales a los límites del intervalo"
FinAlgoritmo
