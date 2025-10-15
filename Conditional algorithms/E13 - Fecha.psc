//Ejercicio 13 - Estructura condicional
//Problema: Escribe un programa que pida una fecha (d�a, mes y a�o) y diga si es correcta.
//Entrada: El d�a, mes y a�o que el usuario ingrese.
//Salida: La indicaci�n de que la fecha es correcta o no.
//Dise�o:
//1. Pedirle al usuario el dia, mes y a�o que desea comprobar.
//2. Seg�n mes hacer lo siguiente:
//2.1 Si mes es 1,3,5,7,8,10,12 asignar dias del mes = 31.
//2.2 Si mes es 4,6,9,11 asignar dias del mes = 30.
//2.3 Si mes es 2, checar si es a�o bisiesto o no.
//3. Si dia < 0 o dia > dias_mes
Algoritmo Fecha
	Definir dia,mes,a�o,dias_mes Como Entero
	Imprimir "Escribe el d�a que quieras: "
	Leer dia
	Imprimir "Ahora el mes: "
	Leer mes
	Imprimir "Finalmente el a�o: "
	Leer a�o
	
	Segun mes Hacer
		1,3,5,7,8,10,12: dias_mes = 31
		4,6,9,11: dias_mes= 30
		2: 
			Si a�o % 4 = 0 Y (a�o % 100 = 0 O a�o % 400 = 0) Entonces
				dias_mes = 29
			SiNo
				dias_mes = 28
			FinSi
		De Otro Modo:
			Imprimir "Fecha incorrecta"
	FinSegun
	
	Si dia < 0 O dia > dias_mes Entonces
		Imprimir "Fecha incorrecta"
	SiNo
		Imprimir "Fecha correcta"
	FinSi
	
FinAlgoritmo
