//Ejercicio 1 - Estructura condicional
//Problema: Algoritmo que pida dos números e indique si el primero es mayor que el segundo o no.
//Entrada: Los dos números, variable real.
//Salida: Indicación de si el primer número es mayor o no, variable booleana.
//Diseño:
//1. Preguntarle al usuario por los dos números.
//2. Comparar el valor de ambos números mediante un Si.
//3. Si el número 1 es mayor, imprime 'verdadero'.
//4. Si no, imprime 'falso'.
Algoritmo Num_mayor
	Definir num1,num2 Como Real
	Escribir "Escribe el primer número:" 
	Leer num1
	Escribir "Ahora escribe el segundo: "
	Leer num2
	Si num1 > num2 Entonces
		Escribir "Verdadero"
	SiNo
		Escribir "Falso" 
	FinSi
FinAlgoritmo
