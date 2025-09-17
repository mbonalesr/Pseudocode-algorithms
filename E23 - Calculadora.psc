//Ejercicio 23 - Estructura condicional
//Problema: Pide al usuario:
//Un número A, otro número B
//Una operación: suma (+), resta (-), multiplicación (*) o división (/)
//Según el operador ingresado:
//Realiza la operación correspondiente.	Si el usuario elige división y B es cero, imprime "No se puede dividir entre cero."
//Entrada: El numero A y B (variables reales), la operación +,-,*,/ (variable de caracteres).
//Salida: El resultado de la operación de los dos nùmeros (variable real).
//Diseño
//1.Pedirle al usuario el número A.
//2.Pedirle el número B.
//3.Que el usuario seleccione la operación mediante el símbolo.
//4.Si número B = 0 Y operacion = /, Imprimir "No se puede dividir entre cero"
//5.Si no, segun la operacion hacer
//5.1: + es A + B
//5.2: - es A - B
//5.3: * es A * B
//5.4: / es A / B
//6.Mostrar resultados
Algoritmo Calculadora
	Definir A,B,res Como Real
	Definir op Como Caracter
	Imprimir "Escribe el primer número: "
	Leer A
	Imprimir "Ahora el segundo número: "
	Leer B
	Imprimir "Finalmente, escribe la operación (con su símbolo) que desees hacer: "
	Leer op
	Si op = "/" Y B = 0 Entonces
		Imprimir "No se puede dividir entre cero"
	SiNo
		Segun op Hacer
			"+": res = A + B
				Imprimir "El resultado de ",A,op,B, " es: ",res
			"-": res = A - B
				Imprimir "El resultado de ",A,op,B, " es: ",res
			"*": res = A * B
				Imprimir "El resultado de ",A,op,B, " es: ",res
			"/": res = A / B
				Imprimir "El resultado de ",A,op,B, " es: ",res
			De Otro Modo:
				Imprimir "Operación no válida"
		FinSegun
	FinSi
FinAlgoritmo
