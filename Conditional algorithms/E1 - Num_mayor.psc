//Ejercicio 1 - Estructura condicional
//Problema: Algoritmo que pida dos n�meros e indique si el primero es mayor que el segundo o no.
//Entrada: Los dos n�meros, variable real.
//Salida: Indicaci�n de si el primer n�mero es mayor o no, variable booleana.
//Dise�o:
//1. Preguntarle al usuario por los dos n�meros.
//2. Comparar el valor de ambos n�meros mediante un Si.
//3. Si el n�mero 1 es mayor, imprime 'verdadero'.
//4. Si no, imprime 'falso'.
Algoritmo Num_mayor
	Definir num1,num2 Como Real
	Escribir "Escribe el primer n�mero:" 
	Leer num1
	Escribir "Ahora escribe el segundo: "
	Leer num2
	Si num1 > num2 Entonces
		Escribir "Verdadero"
	SiNo
		Escribir "Falso" 
	FinSi
FinAlgoritmo
