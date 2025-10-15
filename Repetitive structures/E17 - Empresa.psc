// Ejercicio 17 - Estructura repetitiva
// Problema: Una empresa les paga a sus empleados con base en las horas trabajadas en la semana. Para esto, se registran los días que trabajó y las horas de cada día. Realice un algoritmo para determinar el sueldo semanal de N trabajadores y además calcule cuánto pagó la empresa por los N empleados.
// Entrada: La cantidad de empleados así como los dias de la semana que trabajo y las horas de cada día cada uno (variables enteras y real).
// Salida: El sueldo semanal de cada trabajador y el total de la empresa que pago por los salarios de todos (variables reales).
// Diseño:
// 1.Pedirle al usuario que escriba la cantidad de empleados que hay en la empresa.
// 2.Si el N < 1 decirle que es un número inválido. Si no seguir.
// 3.Hacer un para que vaya de 1 a N.
// 4.Pedirle al usuario que registre cuantos dias de la semana trabajó (1 a 6).
// 5.Si D < 0 o D > 7 decirle que es por favor introduzca un número válido. Si no seguir.
// 6.Hacer otro para que vaya de 1 a D.
// 7.Dentro de este para, pedirle cuantas horas trabajo cada día
// 8.Obtener el sueldo multiplicando las horas totales por la tarifa
// 9.Guardar el sueldo en el acumulado.
// 10.Salir del para y ahi mostrar el total acumulado que se gastó la empresa.
Algoritmo Empresa
	Definir N,D Como Entero
	Definir tarifa,horas,horas_t,sueldo,sueldof,acum Como Real
	acum = 0
	tarifa = 267.4
	Imprimir Sin Saltar "Escriba la cantidad de empleados en la empresa: "
	Leer N
	Si N < 1 Entonces
		Imprimir "Número inválido de empleados"
	SiNo
		Para i = 1 Hasta N Hacer
			horas_t = 0
			Imprimir Sin Saltar "Cuántos días trabajaste esta semana, empleado ", i, ":"
			Leer D
			Si D < 1 O D > 6 Entonces
				Imprimir "Número inválido de días"
			SiNo
				Para j = 1 Hasta D Hacer
					Segun j Hacer
						1: dia_nombre = "lunes"
						2: dia_nombre = "martes"
						3: dia_nombre = "miércoles"
						4: dia_nombre = "jueves"
						5: dia_nombre = "viernes"
						6: dia_nombre = "sábado"
					FinSegun
				Imprimir "Cuántas horas trabajaste el ",dia_nombre,"?"
				Leer horas
				horas_t = horas_t + horas
				FinPara
			FinSi
			sueldo = tarifa * horas_t
			sueldof = Redon(sueldo)
			acum = acum + sueldo
			Imprimir "Empleado ", i, ": sueldo semanal $", sueldof
		FinPara
		Imprimir "Total pagado por la empresa esta semana: $", Redon(acum)
	FinSi
FinAlgoritmo
