//Ejercicio 13 - Estructura condicional
//Problema: Escribe un programa que pida una fecha (día, mes y año) y diga si es correcta.
//Entrada: El dìa, mes y año que el usuario ingrese.
//Salida: La indicaciòn de que la fecha es correcta o no.
//Diseño:
//1. Pedirle al usuario el dia, mes y año que desea comprobar.
//2. Segùn mes hacer lo siguiente:
//2.1 Si mes es 1,3,5,7,8,10,12 asignar dias del mes = 31.
//2.2 Si mes es 4,6,9,11 asignar dias del mes = 30.
//2.3 Si mes es 2, checar si es año bisiesto o no.
//3. Si dia < 0 o dia > dias_mes
Algoritmo Fecha
	Definir dia,mes,año,dias_mes Como Entero
	Imprimir "Escribe el día que quieras: "
	Leer dia
	Imprimir "Ahora el mes: "
	Leer mes
	Imprimir "Finalmente el año: "
	Leer año
	
	Segun mes Hacer
		1,3,5,7,8,10,12: dias_mes = 31
		4,6,9,11: dias_mes= 30
		2: 
			Si año % 4 = 0 Y (año % 100 = 0 O año % 400 = 0) Entonces
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
