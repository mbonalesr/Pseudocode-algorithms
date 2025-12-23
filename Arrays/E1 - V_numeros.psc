//Ejercicio 1 - Arreglos
//Problema: Realizar un programa que defina un vector llamado "vector_numeros" de 10 enteros, a continuación lo inicialice con valores aleatorios (del 1 al 10) y posteriormente muestre en pantalla cada elemento del vector junto con su cuadrado y su cubo.
//Entrada: Los 10 números aleatorios del 1 al 10 del vector (variable entera).
//Salida: El número aleatorio seleccionado así como su cuadrado y cubo (variable entera).
//Diseño: 
// 1.Definir el vector como entero y con dimension igual a 10.
// 2.Hacer un para que vaya de 1 hasta 10.
// 3.Dentro del para, generar aleatoriamente los números del 1 al 10.
// 4.Una vez que se hayan generado, obtener su cuadrado mediante vector_num vector_num[i]^2 y su cubo mediante vector_num[i]^3.
// 5.Mostrar los diez elementos del vector con los tres datos.
Algoritmo Vector_numeros
	Definir vector_num Como Entero
	Dimension vector_num[10]
	Para i = 1 Hasta 10 Hacer
		vector_num[i] = Aleatorio(1,10)
		Imprimir "El número es: ",vector_num[i],". Su cuadrado es: ",vector_num[i]^2,". Su cubo es: ",vector_num[i]^3
	FinPara
FinAlgoritmo
