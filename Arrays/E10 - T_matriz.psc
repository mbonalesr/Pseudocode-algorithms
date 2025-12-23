//Ejercicio 10 - Arreglos
//Problema: Diseñar el algoritmo correspondiente a un programa, que:
// -Crea una tabla bidimensional de longitud 5x5 y nombre 'matriz'.
// -Carga la tabla con valores numéricos enteros.
// -Suma todos los elementos de cada fila y todos los elementos de cada columna visualizando los resultados en pantalla.
//Entrada: Los números aleatorios del 1 al 10 que el programa genere y rellene en cada fila y columna (variable entera).
//Salida: La impresión de cada valor aleatorio generado, así como la suma de sus filas y de sus columnas (variable entera).
//Diseño:
// 1.INICIALIZACIÓN
// 1.1: Se define una matriz de tamaño 5x5.
// 1.2: Se declaran las variables necesarias: fil, col y suma.
// 2.GENERACIÓN DE DATOS
// 2.1: Se recorre la matriz con dos bucles anidados: uno para las filas y otro para las columnas.
// 2.2: En cada celda matriz[fil,col], se asigna un número aleatorio entre 0 y 10.
// 3.Se imprime la matriz completa en pantalla, mostrando los valores fila por fila.
// 4.SUMA POR FILAS
// 4.1: Se recorre cada fila.
//4.2: Para cada fila, se inicializa la variable suma en cero.
// 4.3: Se recorren sus columnas y se acumulan los valores en suma.
// 4.4: Al terminar cada fila, se imprime el resultado de la suma correspondiente.
//5.SUMA POR COLUMNAS
// 5.1: Se recorre cada columna.
//5.2: Para cada columna, se inicializa la variable suma en cero.
//5.3: Se recorren sus filas y se acumulan los valores en suma.
//5.4: Al terminar cada columna, se imprime el resultado de la suma correspondiente.
Algoritmo T_matriz
	Definir matriz,fil,col,suma Como Entero 
	Dimension matriz[5,5] 
	//Generar valores aleatorios en la matriz 
	Para fil = 1 Hasta 5 Hacer 
		Para col = 1 Hasta 5 Hacer 
			matriz[fil,col] = Aleatorio(0,10) 
		FinPara 
	FinPara
	
	//Mostrar la matriz 
	Imprimir "Matriz generada: " 
	Para fil = 1 Hasta 5 Hacer 
		Para col = 1 Hasta 5 Hacer 
			Imprimir Sin Saltar matriz[fil,col]," " 
		FinPara 
		Imprimir ":" 
	FinPara
	
	//Sumando los elementos de cada fila
	suma = 0
	Para fil = 1 Hasta 5 Hacer
		suma = 0
		Para col = 1 Hasta 5 Hacer
			suma = suma + matriz[fil,col] 
		FinPara
		Imprimir "Suma de la fila: ",fil,": ",suma
	FinPara
	
	//Sumando los elementos de cada columna
	suma = 0
	Para col = 1 Hasta 5 Hacer
		suma = 0
		Para fil = 1 Hasta 5 Hacer
			suma = suma + matriz[fil,col]
		FinPara
		Imprimir "Suma de la columna: ",col,": ",suma
	FinPara
FinAlgoritmo