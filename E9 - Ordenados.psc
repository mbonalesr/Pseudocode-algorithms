//Ejercicio 9 - Estructura condicional
//Problema: Algoritmo que pida tres números y los muestre ordenados (de mayor a menor).
//Entrada: Los tres números, variable real.
//Salida: Los números ordenados de mayor a menor.
//Diseño:
//1. Pedirle al usuario los tres números.
//2. Si num1>num2>num3 imprimir num1,num2,num3
//3. Si num1>num3>num2 imprimir num1,num3,num2
//4. Si num2>num1>num3 imprimir num2,num1,num3
//5. Si num2>num3>num1 imprimir num2,num3,num1
//6. Si num3>num1>num2 imprimir num3,num1,num2
//7. Si num3>num2>num1 imprimir num3,num2,num1
Algoritmo Ordenados
	Definir num1,num2,num3 Como Entero
	Imprimir "Escribe el primer número: "
	Leer num1
	Imprimir "Ahora el segundo: "
	Leer num2
	Imprimir "Por último, el tercer número: "
	Leer num3
	
	Si num1 > num2 Y num1 > num3 Entonces
		Si num3 > num2 Entonces
			Imprimir "El orden es: ",num1,num3,num2
		SiNo
			Imprimir "El orden es: ",num1,num2,num3
		FinSi
	FinSi
	
	Si num2 > num1 Y num2 > num3 Entonces
		Si num1 > num3 Entonces
			Imprimir "El orden es: ",num2,num1,num3
		SiNo
			Imprimir "El orden es: ",num2,num3,num1
		FinSi
	FinSi
	
	Si num3 > num1 Y num3 > num2 Entonces
		Si num1 > num2 Entonces
			Imprimir "El orden es: ",num3,num1,num2
		SiNo
			Imprimir "El orden es: ",num3,num2,num1
		FinSi
	FinSi
	
	
FinAlgoritmo
