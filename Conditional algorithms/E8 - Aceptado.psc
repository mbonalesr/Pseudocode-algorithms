//Ejercicio 8 - Estructura condicional
//Problema: Algoritmo que pida dos números 'nota' y 'edad' y un carácter 'sexo' y muestre el mensaje 'ACEPTADA' si la nota es mayor o igual a cinco, la edad es mayor o igual a dieciocho y el sexo es 'F'. En caso de que se cumpla lo mismo, pero el sexo sea 'M', debe imprimir 'POSIBLE'. Si no se cumplen dichas condiciones se debe mostrar 'NO ACEPTADA'.
//Entrada: Nota y edad como variable real, sexo como variable de caracteres.
//Salida: Mensaje de ACEPTADO, POSIBLE, NO ACEPTADO como variable de caracteres.
//Diseño:
//1.Preguntar al usuario su nota.
//2.Preguntar al usuario su edad.
//3.Preguntar al usuario su sexo (M o F).
//4.Si nota >= 5, edad >= 18 Y sexo = 'F', imprimir 'ACEPTADA'.
//5.Si cumple con todo pero sexo = 'M', imprimir 'POSIBLE'.
//Si no cumple con nada, imprimir 'NO ACEPTADA'.
Algoritmo Aceptado
	Definir nota,edad Como Entero
	Definir sexo Como Caracter
	Imprimir "Dime tu calificación: "
	Leer nota
	Imprimir "Qué edad tienes: "
	Leer edad
	Imprimir "Escribe tu sexo (M o F): "
	leer sexo
	Si nota >= 5 Y edad >= 18 Entonces
		Si sexo = 'F' Entonces
			Imprimir "ACEPTADA"
		SiNo
			Imprimir "POSIBLE"
		FinSi
	SiNo
		Imprimir "NO ACEPTADA"
	FinSi
FinAlgoritmo
