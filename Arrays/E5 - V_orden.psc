//Ejercicio 5 - Arreglos
//Problema: Hacer un programa que inicialice un vector de números con valores aleatorios, y posterior ordene los elementos de menor a mayor.
//Entrada: Los n valores aleatorios que tenga el vector (variable entera).
//Salida: Los n valores ordenados del vector (variable real).
//Diseño:
// 1.Definir el vector como real y con dimension igual a n.
// 2.Definir n como entero que será la cantidad de números que se generen.
// 3.Hacer un para que vaya de 1 a n, que es donde se generaran los números aleatoriamente.
// 4.Dentro del para, generar en el vector un número aleatorio del 0 al 20.
// 5.Imprimirlos para saber que todo en orden.
// 6.Usar la variable orden que sea el primer valor de aleatorio.
// 7.Hacer un para de i = 1 hasta n-1 (porque ya esta ordenado) y otro para anidado de i+1(para comparar con los que están después) hasta n para ir cambiando los lugares.
// 8.Hacer una condicional donde si el aleatorio i es mayor que el j, pasar el i al orden y así moverlo al j hasta que esté en orden de ese para.
// 9.Salir de ese para y hacer uno de k igual a uno hasta n que solo imprima el arreglo ordenado.
Algoritmo V_orden
	Definir aleat,n,orden Como Entero
	n = 5
	Dimension aleat[n]
	Para i = 1 Hasta n Hacer
		aleat[i] = Aleatorio(0,20)
		Imprimir aleat[i]
	FinPara
	
	Imprimir "Ordenados"
	orden = aleat[1]
	Para i = 1 Hasta n-1 Hacer
		Para j = i+1 Hasta n Hacer
			Si aleat[i] > aleat[j] Entonces
				orden = aleat[i] 
				aleat[i] = aleat[j]
				aleat[j] = orden
			FinSi
		FinPara
	FinPara
	
	Para k=1 Hasta n Hacer
		Imprimir aleat[k]
	FinPara
FinAlgoritmo
