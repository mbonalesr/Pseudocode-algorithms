//Ejercicio 12 - Arreglos
//Problema: Diseñar el algoritmo correspondiente a un programa, que:
//- Crea una tabla bidimensional de longitud 5x15 y nombre 'marco'.
//- Carga la tabla con dos únicos valores 0 y 1, donde el valor uno ocupará las posiciones o elementos que delimitan la tabla, es decir, las más externas, mientras que el resto de los elementos contendrán el valor 0.
//- Visualiza el contenido de la matriz en pantalla.
//Entrada: La tabla bidimensional 5x15 (variable entera).
//Salida: La misma tabla, solo que con '1's en las partes externas de la matriz y con '0's adentro (variable entera).
//Diseño:
// 1.Iniciar la variable 'marco' con dimensiones de 5x15, así como también iniciar las variables internas de 'fil' y 'col'.
// 2.Hacer un para anidado donde fil vaya de 1 a 5 y col de 1 a 15, adentro agregaremos la condición de que si fil es 1 o 5, o que col es 1 o 15 marco valdra 1 y si no, valdrá 0.
// 3.Salimos de ese para anidado para entrar al último donde irá de 1 a 5 y de 1 a 15 y solo mostraremos los valores de marco.
Algoritmo T_marco
	Definir marco,fil,col Como Entero
	Dimension marco[5,15]
	
	Para fil = 1 Hasta 5 Hacer
		Para col = 1 Hasta 15 Hacer
			Si fil = 1 O fil = 5 O col = 1 O col = 15 Entonces
				marco[fil,col] = 1
			SiNo
				marco[fil,col] = 0
			FinSi
		FinPara
	FinPara
	
	Imprimir "Matriz generada: " 
	Para fil = 1 Hasta 5 Hacer 
		Para col = 1 Hasta 15 Hacer 
			Imprimir Sin Saltar marco[fil,col]," " 
		FinPara 
		Imprimir ":" 
	FinPara
FinAlgoritmo
