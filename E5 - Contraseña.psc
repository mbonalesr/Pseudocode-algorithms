//Ejercicio 5 - Estructura condicional
//Problema: Escribe un programa que pida un nombre de usuario y una contrase�a y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema", sino se da un error.
//Entrada: El nombre de usuario y la contrase�a, variable de caracteres.
//Salida: Escribir ""Has entrado al sistema" si es correcto o "Error" si no, variable de caracteres. 
//Dise�o:
//1.Pedirle al usuario que escriba el usuario.
//2.Pedirle ahora que escriba la contrase�a.
//3.Verificar si la contrase�a y usuario es igual a "asdasd" y "pepe" respectivamente.
//4.Si si coincide, escribir "Has entrado al sistema" y si no, escribir "pepe".
Algoritmo Contrase�a
	Definir user,contr Como Caracter
	Escribir "Cual es tu usuario? "
	Leer user
	Escribir "Ahora, escribe la contrase�a: "
	Leer contr
	Si user = "pepe" Y contr = "asdasd" Entonces
		Escribir "Has entrado al sistema"
	SiNo
		Escribir "Error"
	FinSi
FinAlgoritmo
