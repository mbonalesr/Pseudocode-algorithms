// Ejercicio 13 - Estructura repetitiva
// Problema: Una empresa tiene el registro de las horas que trabaja diariamente un empleado durante la semana (seis d�as) y requiere determinar el total de �stas, as� como el sueldo que recibir� por las horas trabajadas.
// Entrada: La cantidad de horas que se trabajo por d�a y la paga por hora (variable entera y real).
// Salida: Total de horas trabajadas por d�a y el sueldo total (variable entera y real).
// Dise�o:
// 1.Inicializar los dias = 6 y el sueldo = 0 as� como las horas = 0, jornada = 0, semana = 0
// 2.Hacer un mientras dias <> 0
// 3.Dentro de este si dias > 0, pedirle al usuario que ingrese las horas que trabajo y el salario por hora.
// 4.Hacer la multiplicacion de las jornada = horas * salario y acumularla en semana = semana + jornada.
// 5.Restar dias = dias - 1
Algoritmo Registro_empresa
	Definir dias,horas Como Entero
	Definir sueldo,jornada,semana Como Real
	definir dia_nombre Como Caracter
	dias = 6
	horas = 0
	sueldo = 0
	jornada = 0
	semana = 0
	Mientras dias <> 0 Hacer
		Segun dias Hacer
			6: dia_nombre = "lunes"
			5: dia_nombre = "martes"
			4: dia_nombre = "mi�rcoles"
			3: dia_nombre = "jueves"
			2: dia_nombre = "viernes"
			1: dia_nombre = "s�bado"
		FinSegun
		
		Imprimir Sin Saltar "Ingresa las horas que trabajaste el ",dia_nombre," : "
		Leer horas
		Imprimir Sin Saltar "Ahora tu salario diario: "
		Leer sueldo
		jornada = horas * sueldo
		semana = semana + jornada
		dias = dias - 1
	FinMientras
	
	Imprimir "Tu sueldo semanal es de: $",semana," pesos"
FinAlgoritmo
