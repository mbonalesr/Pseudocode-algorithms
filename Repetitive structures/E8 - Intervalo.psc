// Ejercicio 8 - Estructura repetitiva
// Problema: Escribe un programa que pida el limite inferior y superior de un intervalo. Si el l�mite inferior es mayor que el superior lo tiene que volver a pedir. A continuaci�n se van introduciendo n�meros hasta que introduzcamos el 0. Cuando termine el programa dar� las siguientes informaciones:
// - La suma de los n�meros que est�n dentro del intervalo (intervalo abierto).
// - Cuantos n�meros est�n fuera del intervalo.
// - He informa si hemos introducido alg�n n�mero igual a los l�mites del intervalo.
// Entrada: Los dos valores del intervalo que elijamos (variables enteras).
// Salida: La suma de los n�meros de ese intervalo (variable entera), los n�meros fuera del intervalo (variable entera), los n�meros iguales a los del intervalo (variable entera)
// Dise�o:
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
		Imprimir Sin Saltar "Escribe el l�mite inferior: "
		Leer inf
		Imprimir Sin Saltar "Ahora el l�mite superior: "
		Leer sup
	Hasta Que sup > inf
		
	Mientras num <> 0 Hacer
		Imprimir Sin Saltar "Escribe cualquier n�mero: "
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
	Imprimir "La suma de los n�meros que est�n dentro del intervalo es: ",suma
	Imprimir "Hay ",fuera," n�meros fuera del intervalo"
	Imprimir "Has introducido ",igu," n�meros iguales a los l�mites del intervalo"
FinAlgoritmo
