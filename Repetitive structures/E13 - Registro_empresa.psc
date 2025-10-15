// Ejercicio 13 - Estructura repetitiva
// Problema: Una empresa tiene el registro de las horas que trabaja diariamente un empleado durante la semana (seis días) y requiere determinar el total de éstas, así como el sueldo que recibirá por las horas trabajadas.
// Entrada: La cantidad de horas que se trabajo por día y la paga por hora (variable entera y real).
// Salida: Total de horas trabajadas por día y el sueldo total (variable entera y real).
// Diseño:
// 1.Inicializar los dias = 6 y el sueldo = 0 asì como las horas = 0, jornada = 0, semana = 0
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
			4: dia_nombre = "miércoles"
			3: dia_nombre = "jueves"
			2: dia_nombre = "viernes"
			1: dia_nombre = "sábado"
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
