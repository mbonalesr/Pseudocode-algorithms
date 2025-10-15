// Ejercicio 16 - Estructura repetitiva
// Problema: Una empresa les paga a sus empleados con base en las horas trabajadas en la semana. Realice un algoritmo para determinar el sueldo semanal de N trabajadores y, además, calcule cuánto pagó la empresa por los N empleados.
// Entrada: Las horas que cada empleado trabajo en la semana y cuanto se paga la hora (variable real).
// Salida: El sueldo semanal de cada trabajador y la suma total del salario de todos (variable real).
// Diseño:
// 1.Pedirle al usuario que escriba la cantidad de empleados que hay en la empresa.
// 2.Hacer un para que vaya de 1 a N:
// 3.Dentro del para, preguntar por las horas trabajadas semanalmente y la tarifa por hora.
// 4.Multiplicar la tarifa por las horas y guardarlas en una variable llamada "sueldo".
// 5.Ese sueldo guardarla en el acumulado = acumulado + sueldo.
// 6.Mostrar el sueldo de ese empleado
// 7.Saliendo del loop mostrar el acumulado.
Algoritmo Empleado
	Definir N Como Entero
	Definir horas,tarifa,sueldo,acum,sueldo_f Como Real
	acum = 0
	tarifa = 282.5
	Imprimir Sin Saltar "Escriba la cantidad de empleados en la empresa: "
	Leer N
	Si N < 1 Entonces
		Imprimir "Número inválido"
	SiNo
		Para i = 1 Hasta N Hacer
			Imprimir Sin Saltar "Horas trabajadas esta semana por el empleado ", i, ": "
			Leer horas
			sueldo = tarifa * horas
			sueldo_f = Redon(sueldo)
			acum = acum + sueldo
			Imprimir "Empleado ", i, ": sueldo semanal $", sueldo_f
		FinPara
		Imprimir "Total pagado por la empresa esta semana: $", acum
	FinSi
FinAlgoritmo