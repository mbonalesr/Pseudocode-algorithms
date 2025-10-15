//Ejercicio 4 - Estructura condicional
//Problema: Crea un programa que pida al usuario dos n�meros y muestre su divisi�n si el segundo no es cero, o un mensaje de aviso en caso contrario.
//Entrada: Los dos n�meros que ingresa el usuario, variable entera.
//Salida: La divisi�n, variable real o el mensaje que no se puede dividir un n�mero entre 0.
//Dise�o:
//1. Pedirle al usuario dos n�meros.
//2. Verificar si el segundo n�mero es igual a 0.
//3. Si si, indicar un mensaje de error.
//4. Si no, hacer la divisi�n y mostrar el resultado.
Algoritmo Div_o_0
	Definir num,num2,div Como Real
	Escribir "Escribe cualquier n�mero: "
	Leer num
	Escribir "Ahora escribe otro: "
	Leer num2
	Si num2 = 0 Entonces
		Imprimir "Error, no se puede dividir entre 0."
	SiNo
		div = num / num2
		Escribir "El resultado de la divisi�n es: ",div
	FinSi
FinAlgoritmo
