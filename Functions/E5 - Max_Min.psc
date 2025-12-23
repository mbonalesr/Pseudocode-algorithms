// Ejercicio 5 - Funciones
// Problema: Crea una función "calcularMaxMin" que recibe una arreglo con valores numéricos y devuelve el valor máximo y el mínimo. Crea un programa que pida números por teclado y muestre el máximo y el mínimo, utilizando la función anterior.
// Entrada: Los números del arreglo que ingrese el usuario (variable real).
// Salida: El mensaje mostrando el valor máximo y mínimo (variable de cadena y real).
// Diseño:
// 1.Crear la función 'calcularMaxMin' y usar como argumentos 'arreglo' y 'n'.
// 2.Dentro de la función, definir las variables 'max', 'min' que tomarán el valor del primer elemento del arreglo.
// 3.Hacer un para de 2 a n, dentro de el haremos una condicional de si 'max' es menor al elemento del arreglo, tomará ese valor, del mismo modo haremos lo mismo con 'min', si es mayor que el elemento del arreglo, tomará ese valor.
// 4.Saliendo del para imprimiremos el valor de 'max' y 'min' y saldremos de la función.
// 5.Ahora haremos el algoritmo donde definiremos 'n' como entero y 'arr' como real, también definiremos la dimension de 'arr' que sea igual al valor de 'n'.
// 6.Haremos otro para de 1 hasta 'n' donde le pediremos al usuario que escriba los números que desee y que se lea con 'arr[i]', salimos del para.
// 7.Llamamos a la función 'calcularMaxMin' con los argumentos 'arr' y 'n'.
Funcion calcularMaxMin(arreglo Por Referencia,n)
	max = arreglo[1]
	min = arreglo[1]
	Para i = 2 Hasta n Hacer
		Si max < arreglo[i] Entonces
			max = arreglo[i]
		FinSi
		
		Si min > arreglo[i] Entonces
			min = arreglo[i]
		FinSi
	FinPara
	Imprimir "El número máximo del arreglo es: ",max
	Imprimir "El número mínimo del arreglo es: ",min
FinFuncion

Algoritmo Pedir_nums
	Definir n Como Entero
	n = 4
	Definir arr Como Real
	Dimension arr[n]
	Para i = 1 Hasta n Hacer
		Imprimir Sin Saltar "Escribe el número que quieras: "
		Leer arr[i]
	FinPara
	calcularMaxMin(arr,n)
FinAlgoritmo