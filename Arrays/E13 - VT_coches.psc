//Ejercicio 13 - Arreglos
//Problema: De una empresa de transporte se quiere guardar el nombre de los conductores que tiene, y los kilómetros que conducen cada día de la semana. Para guardar esta información se van a utilizar dos arreglos:
//1.Nombre: Vector para guardar los nombres de los conductores.
//2.kms: Tabla para guardar los kilómetros que realizan cada día de la semana.
//Se quiere generar un nuevo vector ("total_kms") con los kilómetros totales que realza cada conductor. Al finalizar se muestra la lista con los nombres de conductores y los kilómetros que ha realizado.
//Entrada: El nombre de los conductores y los kilometros que se conducen cada dia de la semana (variable de cadena y real).
//Salida: La lista de todos los conductores y los kilometros que recorrieron cada uno a la semana (variable de cadena y real).
//Diseño:
// 1.Iniciar el vector 'nombres' con dimensiones 'conduc', obtener 'conduc' preguntandole cuantos conductores hay.
// 2.Iniciar la tabla 'kms' con dimensiones conduc,7.
// 3.Hacer un para anidado que vaya de 1 hasta conduc y otro de 1 a 7 (que serán los días de la semana)
// 3.1: Ahí leemos el vector nombres (dentro del primer para) y pasamos al segundo donde según j le preguntaremos al conductor los km recorridos por día de la semana.
// 3.2: Leemos los kilometros de acuerdo a la posición que será la del conductor y la j de los días de la semana.
// 4.Hacemos otro para que se delimite igual que los dos anteriores, solo que entre uno y otro agregaremos la variable suma, iniciandola en 0.
// 4.1: Tambíen delimitamos el vector 'total_kms' que valdrá según la cantidad de conductores.
// 4.2: Dentro del segundo para, sumaremos suma con los kms de i,j
// 4.3: Tendremos que salir de este para, porque asignaremos 'total_kms' que sea equivalente a suma.
// 4.4: Solo tendriamos que mostrar el conductor y el total del kilometraje pero sin salir del primer para.
Algoritmo VT_coches
	Definir conduc Como Entero
	Definir nombres como Cadena
	Definir kms,total_kms,suma Como Real
	Imprimir Sin Saltar "Cuántos conductores manejaron en la semana? "
	Leer conduc
	Dimension nombres[conduc]
	Dimension kms[conduc,7]
	Dimension total_kms[conduc]
	
	Para i = 1 Hasta conduc Hacer
		Imprimir Sin Saltar "Cuál es tu nombre? "
		Leer nombres[i]
		Para j = 1 Hasta 7 Hacer
			Segun j Hacer
				1: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el lunes"
				2: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el martes"
				3: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el miércoles"
				4: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el jueves"
				5: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el viernes"
				6: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el sábado"
				7: Imprimir Sin Saltar "Dime ",nombres[i],", cuantos kilometros conduciste el domingo"
			FinSegun
			Leer kms[i,j]
		FinPara
	FinPara
	
	Para i = 1 Hasta conduc Hacer
		suma = 0
		Para j = 1 Hasta 7 Hacer
			suma = suma + kms[i,j]
		FinPara
		total_kms[i] = suma
		Imprimir "El conductor ",nombres[i]," ha manejado esta semana: ",total_kms[i]," kms"
	FinPara
	
FinAlgoritmo
