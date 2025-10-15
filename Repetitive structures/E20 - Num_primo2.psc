// Ejercicio 20 - Estructura repetitiva
// Problema: Mostrar en pantalla los N primero n�mero primos. Se pide por teclado la cantidad de n�meros primos que queremos mostrar.
// Entrada: La cantidad de n�meros primos que queremos ver (variable entera)
// Salida: Los n�meros primos que queremos ver (variable entera).
// Dise�o:
// 1.Pedirle al usuario que escriba cu�ntos n�meros primos quiere ver y guardarlos en la variable N.
// 2.Si N es menor o igual a cero, mostrar "N�mero inv�lido".
// 3.Sino, poner un mientras que el contador sea menor que N.
// 4.Si el n�mero es 2, mostrarlo en la lista de los primos.
// 5.Hacer un para que vaya de 1 a la ra�z del n�mero introducido.
// 6.Dentro del para, dividir el n�mero por si mismo y dividiendo entre 1 da su residuo % igual a 0, es primo.
// 7.Si es primo entonces se agrega al contador y se avanza al siguiente n�mero.
Algoritmo Num_primo2
	Definir N,cont,num Como Entero
	Definir es_primo Como Logico
	cont = 0
	num = 2
	Imprimir Sin Saltar "Escribe cuantos n�meros primos quieres ver: "
	Leer N
	Si N <= 0 Entonces
		Imprimir "N�mero inv�lido"
	SiNo
		Mientras cont < N Hacer
			Si num = 2 Entonces
				es_primo = Verdadero
			SiNo
				es_primo = Verdadero
				Para i = 2 Hasta raiz(num) Hacer
					Si num % i = 0 Entonces
						es_primo = Falso
					FinSi
				FinPara
			FinSi
			Si es_primo Entonces
				Imprimir num
				cont = cont + 1
			FinSi
			num = num + 1
		FinMientras
	FinSi
FinAlgoritmo
