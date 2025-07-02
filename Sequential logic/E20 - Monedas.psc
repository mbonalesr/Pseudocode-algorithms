//Ejercicio 20 - Estructura secuencial
//Problema: Diseñar un algoritmo que nos diga el dinero que tenemos (en euros y céntimos) después de pedirnos cuantas monedas tenemos (de 2?, 1?, 50 céntimos, 20 céntimos o 10 céntimos).
//Entrada: La cantidad de monedas de 2,1 euro, 50, 20 y 10 céntimos, variable entera.
//Salida: La cantidad total de euros que tiene el usuario, variable real.
//Diseño:
//1.Pedirle al usuario que ingrese las monedas de 2 euros que tiene.
//2.Pedirle al usuario que ingrese las monedas de 1 euro que tiene.
//3.Pedirle al usuario que ingrese las monedas de 50 centimos que tiene.
//4.Pedirle al usuario que ingrese las monedas de 20 centimos que tiene.
//5.Pedirle al usuario que ingrese las monedas de 10 centimos que tiene.
//6.Multiplicar por la cantidad de monedas en cada caso y meterlas en una variable.
//7.Sumar cada variable de las monedas
//8.Mostrar resultados.
Algoritmo Monedas
	Definir mon2,mon1,mon50,mon20,mon10 Como Entero
	Definir tmon2,tmon1,tmon50,tmon20,tmon10,total Como Real
	Escribir "Ingrese las monedas de 2 euros que tenga: "
	Leer mon2
	Escribir "Ingrese las monedas de 1 euro que tenga: "
	Leer mon1
	Escribir "Ingrese las monedas de 50 céntimos que tenga: "
	Leer mon50
	Escribir "Ingrese las monedas de 20 céntimos que tenga: "
	Leer mon20
	Escribir "Ingrese las monedas de 10 céntimos que tenga: "
	Leer mon10
	total = (mon2 * 2) +(mon1) + (mon50 * 0.5) + (mon20 * 0.2) + (mon10 * 0.1)
	Escribir "sTienes en total: ",total, " euros."
FinAlgoritmo