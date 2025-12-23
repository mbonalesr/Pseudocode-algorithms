//Ejercicio 7 - Arreglos
//Problema: Programa que declare tres vectores 'vector1', 'vector2' y 'vector3' de cinco enteros cada uno, pida valores para 'vector1' y 'vector2' y calcule vector3=vector1+vector2.
//Entrada: Los dos vectores de 5 valores c/u (variables reales).
//Salida: El vector con la suma de los dos vectores (variable real).
//Diseño:
// 1.Definir el 'v1','v2','v3' como reales y dimension de 5.
// 2.Hacer un para que vaya de 1 a 5 y que genere aleatoriamente valores de 0,100 para v1.
// 3.Hacer lo mismo para v2.
// 4.Hacer un último para de 1 a 5 donde se sumen los valores i de v1 con v2
// 5.Mostrar el vector 3.
Algoritmo V_suma
	Definir v1,v2,v3 Como Entero
	Dimension v1[5],v2[5],v3[5]
	Imprimir "Vector 1: "
	Para i = 1 Hasta 5 Hacer
		Imprimir Sin Saltar "Escribe cualquier número del 0-100: "
		Leer v1[i]
	FinPara
	Imprimir ""
	
	Imprimir "Vector 2: "
	Para i = 1 Hasta 5 Hacer
		Imprimir Sin Saltar "Escribe cualquier número del 0-100: "
		Leer v2[i]
	FinPara
	Imprimir ""
	
	Imprimir "v1  v2  v3"
	Para i = 1 Hasta 5 Hacer
		v3[i] = v1[i] + v2[i]
		Imprimir v1[i], "  ", v2[i], "  ", v3[i]
	FinPara
FinAlgoritmo