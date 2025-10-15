//Ejercicio 4 - Estructura condicional
//Problema: Crea un programa que pida al usuario dos números y muestre su división si el segundo no es cero, o un mensaje de aviso en caso contrario.
//Entrada: Los dos números que ingresa el usuario, variable entera.
//Salida: La división, variable real o el mensaje que no se puede dividir un número entre 0.
//Diseño:
//1. Pedirle al usuario dos números.
//2. Verificar si el segundo número es igual a 0.
//3. Si si, indicar un mensaje de error.
//4. Si no, hacer la división y mostrar el resultado.
Algoritmo Div_o_0
	Definir num,num2,div Como Real
	Escribir "Escribe cualquier número: "
	Leer num
	Escribir "Ahora escribe otro: "
	Leer num2
	Si num2 = 0 Entonces
		Imprimir "Error, no se puede dividir entre 0."
	SiNo
		div = num / num2
		Escribir "El resultado de la división es: ",div
	FinSi
FinAlgoritmo
