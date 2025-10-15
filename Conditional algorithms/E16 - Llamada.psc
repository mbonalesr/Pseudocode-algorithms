//Ejercicio 16 - Estructura condicional
//Problema: La política de cobro de una compañía telefónica es: cuando se realiza una llamada, el cobro es por el tiempo que ésta dura, de tal forma que los primeros cinco minutos cuestan 1 euro, los siguientes tres, 80 céntimos, los siguientes dos minutos, 70 céntimos, y a partir del décimo minuto, 50 céntimos. Además, se carga un impuesto de 3 % cuando es domingo, y si es otro día, en turno de mañana, 15 %, y en turno de tarde, 10 %. Realice un algoritmo para determinar cuánto debe pagar por cada concepto una persona que realiza una llamada.
//Entrada: La cantidad de minutos que duró la llamada (variable entera), el día de la semana que la hizo (variable de caracteres) y si la hizo en la mañana o tarde (variable de caracteres).
//Salida: El cobro total de la llamada (variable real).
//Diseño:
//1.Pedirle al usuario que escriba los minutos que duró la llamada.
//2.Pedirle al usuario que escriba el día de la semana que hizo la llamada.
//3.Pedirle al usuario que escriba si hizo la llamada en la mañana o tarde.
//4.Si min <= 5, cobrar un euro.
//5.Si no, si min > 5 Y min < 8, cobrar 0.8 euros mas
//6.Si no, si min > 8 Y min < 10, cobrar 0.7 euros mas
//7.Si no, si min > 10, cobrar 0.5 euros mas
//8.Ahora si dia = "Domingo", multiplicar cobro por 1.03
//9.Si no, preguntar si hizo la llamada de mañana o tarde
//10.Si hora del dia = "Mañana", multiplicar el cobro 1.15
//11.Si no, multiplicar cobro por 1.1
//12.Mostrar el cobro total
Algoritmo Llamada
	Definir minu Como Entero
	Definir dia,hora_dia Como Caracter
	Definir cobro,min_80,min_70,min_50 Como Real
	cobro = 0
	Imprimir "Escribe la cantidad de minutos que duró la llamada por favor: "
	Leer minu
	Imprimir "Que día de la semana fue la llamada? "
	Leer dia
	
	Si minu > 0  Entonces
		cobro = cobro + 1
	FinSi
	
	Si minu > 5 Y minu <= 8 Entonces
		cobro = cobro + (minu - 5) * 0.8
	FinSi
	
	Si minu > 8 Y minu < 10 Entonces
		cobro = cobro + (minu - 8) * 0.7
	FinSi
	
	Si minu > 10 Entonces
		cobro = cobro + (minu - 10) * 0.5
	FinSi
	
	Si Mayusculas(dia) = "D" Entonces
		cobro =  cobro * 1.03
	SiNo
		Imprimir "En que momento del dìa hiciste la llamada? "
		Leer hora_dia
		Si Mayusculas(hora_dia) = "M" Entonces
			cobro = cobro * 1.15
		SiNo
			cobro = cobro * 1.1
		FinSi
	FinSi
	
	Imprimir "El cobro total por la llamada es de: ",cobro," euros."
FinAlgoritmo
