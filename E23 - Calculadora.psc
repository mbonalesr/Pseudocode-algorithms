//Ejercicio 23 - Estructura condicional
//Problema: Pide al usuario:
//Un n�mero A, otro n�mero B
//Una operaci�n: suma (+), resta (-), multiplicaci�n (*) o divisi�n (/)
//Seg�n el operador ingresado:
//Realiza la operaci�n correspondiente.	Si el usuario elige divisi�n y B es cero, imprime "No se puede dividir entre cero."
//Entrada: El numero A y B (variables reales), la operaci�n +,-,*,/ (variable de caracteres).
//Salida: El resultado de la operaci�n de los dos n�meros (variable real).
//Dise�o
//1.Pedirle al usuario el n�mero A.
//2.Pedirle el n�mero B.
//3.Que el usuario seleccione la operaci�n mediante el s�mbolo.
//4.Si n�mero B = 0 Y operacion = /, Imprimir "No se puede dividir entre cero"
//5.Si no, segun la operacion hacer
//5.1: + es A + B
//5.2: - es A - B
//5.3: * es A * B
//5.4: / es A / B
//6.Mostrar resultados
Algoritmo Calculadora
	Definir A,B,res Como Real
	Definir op Como Caracter
	Imprimir "Escribe el primer n�mero: "
	Leer A
	Imprimir "Ahora el segundo n�mero: "
	Leer B
	Imprimir "Finalmente, escribe la operaci�n (con su s�mbolo) que desees hacer: "
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
				Imprimir "Operaci�n no v�lida"
		FinSegun
	FinSi
FinAlgoritmo
