//Ejercicio 11 - Arreglos
//Problema: Diseñar el algoritmo correspondiente a un programa, que:
// - Crea una tabla bidimensional de longitud 5x5 y nombre 'diagonal'.
// - Carga la tabla de forma que los componentes pertenecientes a la diagonal de la matriz tomen el valor 1 y el resto el valor 0.
// - Muestra el contenido de la tabla en pantalla.
//Entrada: La matriz 5x5 con todos los valores en '0' (variable entera).
//Salida: La matriz 5x5 con todos los valores en '0' y con '1' cuando el indice de las filas coincidan con el de las columnas (variable entera).
//Diseño:
// 1.Iniciar la variable 'diagonal' con dimensiones de 5x5, así como también iniciar las variables de 'fil' y 'col'.
// 2.Hacer un para de 1 a 5, donde llenemos todos los valores de la matriz con '0'.
// 3.Salir del primer para y hacer otro similar que vaya de 1 a 5, solo que ahora agregaremos que cual fil sea igual a col, el valor de la diagonal será igual a 1.
// 4.Salimos de ese segundo para y pasaremos al último, que vaya de 1 a 5 y aquí solo nos interesa mostrar como quedó la matriz.
Algoritmo T_diagonal
	Definir diagonal,fil,col Como Entero
	Dimension diagonal[5,5]
	Para fil = 1 Hasta 5 Hacer
		Para col = 1 Hasta 5 Hacer
			diagonal[fil,col] = 0
		FinPara
	FinPara
	
	Para fil = 1 Hasta 5 Hacer 
		Para col = 1 Hasta 5 Hacer 
			Si fil = col Entonces
				diagonal[fil,col] = 1
			FinSi
		FinPara 
	FinPara
	
	Imprimir "Matriz generada: " 
	Para fil = 1 Hasta 5 Hacer 
		Para col = 1 Hasta 5 Hacer 
			Imprimir Sin Saltar diagonal[fil,col]," " 
		FinPara 
		Imprimir ":" 
	FinPara
FinAlgoritmo
