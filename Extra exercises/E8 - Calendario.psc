// Ejercicio 8 - Ejercicios extra
// Problema: Realizar un programa que pida un mes y un año (superior a 1900) y muestre el calendario del mes de esta manera:
// L   M   M   J   V   S   D
// ==========================
//     1   2   3   4   5   6
// 7   8   9  10  11  12  13
// 14  15  16  17  18  19  20
// 21  22  23  24  25  26  27
// 28  29  30  31
// Para ello es necesario averiguar que día de la semana (Lunes, Martes, ?) corresponde con un fecha determinada. Hay muchas maneras de calcularlo: nosotros vamos a contar los días que han trascurridos desde el año 1900 (podemos hacer uso de funciones que hemos utilizado en ejercicios anteriores), y una vez calculado le hacemos el módulo 7 y el número obtenido será el da de la semana (0: domingo, 1: lunes, ?) (NOTA: ten en cuanta que queremos realizar un calendario que empiece en lunes, no en domingo).

//Entrada: El mes y año que el usuario haya ingresado (variables enteras).
//Salida: No hay, solo válida la fecha
//Diseño: 
// 1.Crear la función 'fecha' y usar 'm', 'a' como argumentos
// 2.Hacer un repetir, hasta que con la condición de que el año sea mayor o igual a 1900 y que el mes sea mayor o igual a 1 y menor o igual a 12.
// 3.Pedirle al usuario que ingrese 'm', 'a'.
// 4.Crear una condición donde si el año es menor a 1900 o el mes es menor a 1 o mayor a 12, que arroje un mensaje de error.
// 5.Salir de la función.
Funcion fecha(m Por Referencia,a Por Referencia)
	Repetir
		Imprimir Sin Saltar "Escribe el mes que desees obtener (1-12): "
		Leer m
		Imprimir Sin Saltar "Ahora el año (1900 - adelante): "
		Leer a
		Si a < 1900 O m < 1 O m > 12 Entonces
			Imprimir "Error en la fecha, intente de nuevo"
		FinSi
	Hasta Que a >= 1900 Y m >= 1 Y m <= 12
FinFuncion

//Entrada: El año que el usuario haya ingresado (variable entera).
//Salida: El indicador lógico que nos muestra si el año es bisiesto o no y un mensaje de si el año es bisiesto o no (variable lógica).
//Diseño:
// 1.Guardar la variable 'Bisiesto' en 'EsBisiesto' con el año como argumento.
// 2.Definir 'b' como lógico que sera de donde saquemos 'b'.
// 3.Hacer una condición en donde si dividiendo el año entre 4 nos da su residuo 0 y si luego dividimos ese año entre 100 o 400 y sus dos residuos nos dan 0, entonces la variable 'b' será verdadera.
// 4.En caso contrario, será falso y vamos a imprimir si el año es bisiesto o no, salimos de la función.
Funcion bis = EsBisiesto(a)
    Definir bis Como Logico
    Si (a % 4 = 0) Y (a % 100 <> 0 O a % 400 = 0) Entonces
		bis = Verdadero
    SiNo
        bis = Falso
    FinSi
FinFuncion


//Entrada: El mes y el año (variable entera)
//Salida: La cantidad de días en ese año (variable entera).
//Diseño:
// 1.Guardar la variable 'di' (como entero) en 'DiasDelMes' con mes y año como argumentos.
// 2.Haremos un según, dependiendo el mes que ingrese el usuario.
// 3.Si el mes es 1,3,5,7,8,10,12, entonces tendrá 31 días, si el mes es 4,6,9,11, entonces tendrá 30 días.
// 4.Si el mes es 2, se hará una condicional en donde si al llamar a la función 'EsBisiesto' es verdadera, tendrá 29 días y si es falsa 28.
// 5.Si el mes es diferente a los anunciados, entonces el mes tendrá 0 dias y salimos de la función.
Funcion di = DiasDelMes(m,a)
    Definir di Como Entero
    Segun m Hacer
        1,3,5,7,8,10,12: di = 31
        4,6,9,11: di = 30
        2:
            Si EsBisiesto(a)  Entonces
                di = 29
            SiNo
                di = 28
            FinSi
		De Otro Modo:
			di = 0
    FinSegun
FinFuncion

//Entrada: El dia, mes y año que el usuario ingrese (variables enteras).
//Salida: El dia de la semana en que corresponde (variable entera).
//Diseño: 
// 1.Crear la función 'Calcular_Dia_Juliano' con los argumentos del día, mes y año y guardarlos en la variable 'sem'.
// 2.Mostrar un mensaje para control interno de que los datos son correctos, mostramos la variable 'm' y 'a'.
// 3.Definimos los contadores 'acum' (lo iniciamos en 0 también) e 'i' como enteros, así como el día de la semama 'sem'.
// 4.Crear una condición en que donde si el año es mayor a 1900, haremos un para que vaya de 1900 a el año restado 1 para recorrer los años previos al pedido.
// 5.Checamos con otra condición en que si el año i es bisiesto, que sume al acumulado lo acumulado más 366.
// 6.En el caso de que no sea bisiesto, sumar a lo acumulado 365.
// 7.Salimos de la condición y del para.
// 8.Creamos otra condición en donde si el mes es después de enero, que hagamos un para que recorra los meses anteriores del mismo año.
// 9.Despues, le sumariamos a lo acumulado los días de cada mes usando otra función.
// 10.Ahora salimos del para y sumamos lo acumulado con los días del mes actual.
// 11.Mostramos un mensaje con los días totales acumulados.
// 12.Divide el total de días entre 7 y se queda con el residuo, si sobra 1 es lunes y si sobra 0 es domingo.
// 13.Salimos de la función.
Funcion sem = Calcular_Dia_Juliano(d, m, a)
	Imprimir "Confirmando datos - Mes: ",m," - Años: ",a
    Definir acum, i, sem Como Entero
    acum = 0
	Si a > 1900 Entonces
		Para i = 1900 Hasta a - 1 Hacer
			Si EsBisiesto(i) = Verdadero Entonces
				acum = acum + 366
			SiNo
				acum = acum + 365
			FinSi
		FinPara
	FinSi
	
	Si m > 1 Entonces
		Para i = 1 Hasta m - 1 Hacer
			acum = acum + DiasDelMes(i, a)
		FinPara
	FinSi
    
	acum = acum + d
	
	Imprimir "Debug - Días totales acumulados: ",acum
	sem = acum % 7
FinFuncion

//Entrada: El mes que ingrese el usuario (variable entera).
//Salida: El nombre del mes (variable de cadena).
//Diseño: 
// 1.Crear la función 'ObtenerNombreMes' con el mes como argumento y guardarla en la variable 'nom'.
// 2.Definimos 'nom' como una cadena.
// 3.Hacer un según la cantidad de 'm', asignaremos a los números del 1-12 una cadena con el mes que corresponda.
// 4.Si el mes es 1, que 'nom' guarde la cadena 'Enero' y así con cada mes del año hasta llegar al 12 y guardarla en diciembre.
// 5.Salir de la función.
Funcion nom = ObtenerNombreMes(m)
	Definir nom como Cadena
	Segun m Hacer
		1: nom = "Enero"
		2: nom = "Febrero"
		3: nom = "Marzo"
		4: nom = "Abril"
		5: nom = "Mayo"
		6: nom = "Junio"
		7: nom = "Julio"
		8: nom = "Agosto"
		9: nom = "Septiembre"
		10: nom = "Octubre"
		11: nom = "Noviembre"
		12: nom = "Diciembre"
	FinSegun
FinFuncion

//Entrada: Las diferentes funciones hechas en el programa.
//Salida:
//Diseño: 
// 1.Preparamos las diferentes variables.
// 2.Llamamos a la función 'fecha' para pedirle los datos al usuario.
// 3.Obtenemos los días del mes.
// 4.Mostramos en que día de la semana cae.
// 5.Enseñamos datos técnicos para que todo este en orden.
// 6.Llamamos a la función 'ObtenerNombreMes' y mostramos el mes y el año.
// 7.Dibujamos la cabecera adecuandola a los días de la semana.
// 8.Iniciamos la 'col'umna en 0.
// 9.Hacemos una condición en donde si el día de la semana es 0, cambiarlo a 7 para que visualmente quede.
// 10.Hacer un para en donde vaya de un contador 'k' y vaya hasta el dia de la semana menos 1.
// 11.Agregar 3 espacios en blanco que sería el ancho de un día.
// 12.Sumarle a la columna uno y con esto indicamos que ya está llena.
// 13.Hacer un para que vaya del día 1 hasta los días del mes.
// 14.Si el día es menor a dos dígitos, se le ponen dos espacios para que ocupe tres caracteres.
// 15.En el caso de que tenga dos dígitos, usamos menos espacio
// 16.Movemos la variable columna de lugar añadiendole uno.
// 17.Si llegamos a la posición 7 de la columna, reiniciamos la columna para que se vaya hasta la izquierda.
// 18.Agregamos un salto de línea para la estética.
Algoritmo Prueba
	Definir dia,mes,año,di,sem,col Como Entero
	Definir bis Como Logico
	fecha(mes,año)
	di = DiasDelMes(mes,año)
	sem = Calcular_Dia_Juliano(1,mes,año)
	Imprimir "Dia del mes: ",di
	Imprimir "El día 1 cae en (0 = Dom, 1 = Lun..): ",sem
	
	Imprimir ""
	Imprimir "==================================="
	Imprimir ObtenerNombreMes(mes)," DE ",año
	Imprimir "==================================="
	Imprimir " L  M  M  J  V  S  D"
	Imprimir "==================================="
	
	col = 0
	
	Si sem = 0 Entonces
		sem = 7
	FinSi
	
	Para k = 1 Hasta sem - 1 Hacer
		Imprimir Sin Saltar "   "
		col = col + 1
	FinPara
	
	Para j = 1 Hasta di Hacer
		
		Si j < 10 Entonces
			Imprimir Sin Saltar " ",j," "
		SiNo
			Imprimir Sin Saltar j," "
		FinSi
		
		col = col + 1
		
		Si col = 7 Entonces
			Imprimir ""
			col = 0
		FinSi
	FinPara
	Imprimir ""
	
FinAlgoritmo
