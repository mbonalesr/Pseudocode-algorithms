//Ejercicio 4 - Arreglos
//Problema: Programa que declare un vector de diez elementos enteros y pida números para rellenarlo hasta que se llene el vector o se introduzca un número negativo. Entonces se debe imprimir el vector (sólo los elementos introducidos).
//Entrada: Los n elementos menores o iguales a 10 números (variable entera).
//Salida: Todos los enteros introducidos (variable entera).
//Diseño:
// 1.Definir el vector 'enter' como entero, su dimensión es de 10.
// 2.Hacer un repetir hasta que el vector tenga 10 valores o que un número sea negativo.
// 3.Iniciar el contador 'i' en 1.
// 4.Hacer un repetir hasta que el número sea menor a 0 o i sea 11.
// 5.Pedirle al usuario que escriba un número y se lea.
// 6.Hacer una condición en que si el número es mayor o igual que cero, que se guarde en el vector o si no, que imprima que no es válido y salga del loop.
// 7.Hacer un para aparte, que vaya de 1 hasta i -1 para que imprima los valores positivos del vector.
// 8.Mostrar los valores del vector.
Algoritmo V_entero
	Definir enter,i,num Como Entero
	Dimension enter[10]
	i = 1
	Repetir
		Imprimir Sin Saltar "Escribe cualquier número: "
		Leer num
		Si num >= 0 Entonces
			enter[i] = num
			i = i + 1
		SiNo
			Imprimir "Número inválido" 
		FinSi
	Hasta Que num < 0 O i = 11
	
	Para i = 1 Hasta i-1 Hacer
		Imprimir "Número ",i,": ",enter[i]
	FinPara
FinAlgoritmo
