// Ejercicio 11 & 12 - Funciones
// Problema: El día juliano correspondiente a una fecha es un número entero que indica los días que han transcurrido desde el 1 de enero del año indicado. Queremos crear un programa principal que al introducir una fecha nos diga el día juliano que corresponde. Para ello podemos hacer las siguientes subrutinas:
// - LeerFecha: Nos permite leer por teclado una fecha (día, mes y año).
// - DiasDelMes: Recibe un mes y un año y nos dice los días de ese mes en ese año.
// - EsBisiesto: Recibe un año y nos dice si es bisiesto.
// - Calcular_Dia_Juliano: recibe una fecha y nos devuelve el día juliano.
// Vamos a mejorar el ejercicio anterior haciendo una función para validar la fecha. De tal forma que al leer una fecha se asegura que es válida

//Entrada: La cantidad de días escritas por el usuario (variable entera).
//Salida: El indicador interno de si la fecha es válida (variable lógica).
//Diseño:
// 1.Guardar la variable 'valido' en 'Es_fecha_valida' con los argumentos del dia, mes y año
// 2.'valido' definirla como una variable lógica.
// 3.Hacer una condicional donde si el día es menor a 1 o mayor al señalado de la función 'DiasDelMes' entonces, 'valido' sera falsa.
// 4.En caso contrario, 'valido' será cierto y salimos de la función.
Funcion valido = Es_Fecha_Valida(d, m, a)
    Definir valido Como Logico
    Si d < 1 O d > DiasDelMes(m, a) Entonces
        valido = Falso
    SiNo
        valido = Verdadero
    FinSi
FinFuncion


//Entrada: El año que el usuario haya ingresado (variable entera).
//Salida: El indicador lógico que nos muestra si el año es bisiesto o no y un mensaje de si el año es bisiesto o no (variable lógica).
//Diseño:
// 1.Guardar la variable 'Bisiesto' en 'EsBisiesto' con el año como argumento.
// 2.Definir 'b' como lógico que sera de donde saquemos 'b'.
// 3.Hacer una condición en donde si dividiendo el año entre 4 nos da su residuo 0 y si luego dividimos ese año entre 100 o 400 y sus dos residuos nos dan 0, entonces la variable 'b' será verdadera.
// 4.En caso contrario, será falso y vamos a imprimir si el año es bisiesto o no, salimos de la función.
Funcion Bisiesto = EsBisiesto(a)
    Definir b Como Logico
    Si (a % 4 = 0) Y (a % 100 <> 0 O a % 400 = 0) Entonces
		b = Verdadero
		Imprimir "El año es bisiesto"
    SiNo
        b = Falso
		Imprimir "El año NO es bisiesto"
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

//Entrada: El día, mes y año que el usuario haya ingresado (variables enteras).
//Salida: Los días acumulados en el año (variable entera).
//Diseño:
// 1.Guardar la variable 'acum' en 'Calcular_Dia_Juliano' con los argumentos del día, mes y año.
// 2.Vamos a definir 'acum' como entero e iniciarlo en 0.
// 3.Haremos un para que vaya de 1 a mes-1, con la finalidad de sumar por completos los meses previos.
// 4.Sumaremos 'acum' con 'DiasDelMes' que tiene como argumentos 'i' y el año.
// 5.Salimos del para y aqui solo sumaremos 'acum' con los días que haya ingresado el usuario para obtener el día juliano y salimos de la función.
Funcion acum = Calcular_Dia_Juliano(d, m, a)
    Definir acum, i Como Entero
    acum = 0
	
    Para i = 1 Hasta m-1 Hacer
        acum = acum + DiasDelMes(i, a)
    FinPara
	acum = acum + d
FinFuncion

//Entrada: El día, mes y año que el usuario ingrese (variables enteras).
//Salida: No hay en este proceso.
//Diseño:
// 1.Definir la función 'LeerFecha' con los argumentos por referencia 'd', 'm', 'a' y también definir 'fechav' como indicador lógico o booleano.
// 2.Crear un repetir, hasta que 'fechav' sea verdadero, ya que no podrá ingresar a la función si pone mal el día o el mes principalmente.
// 3.Dentro del repetir, hasta que pediremos el día, mes y año
// 4.Con 'fechav' que traerá el valor de la función 'Es_Fecha_Valida' con los argumentos del día, mes y año.
// 5.Haremos una condicional en donde si 'fechav' es falso, entonces imprimirá el mensaje de 'fecha inválida' y se repetirán las entradas
// 6.Salimos de la función.
Funcion LeerFecha(d Por Referencia,m Por Referencia,a Por Referencia)
	Definir fechav como Logico
	Repetir
		Imprimir Sin Saltar "Dime el día: "
		Leer d
		Imprimir Sin Saltar "Ahora el mes: "
		Leer m
		Imprimir Sin Saltar "Finalmente el año: "
		Leer a
		fechav = Es_Fecha_Valida(d,m,a)
		Si fechav = Falso Entonces
			Imprimir "Fecha inválida"
		FinSi
	Hasta Que fechav = Verdadero
FinFuncion

//Entrada: El día, mes y año ingresados por el usuario (variables enteras).
//Salida: El día, mes y año ingresado, la cantidad de días que tiene el mes que puso y los dias julianos (variables enteras).
//Diseño:
// 1.Definir las variables 'dias', 'mes', 'año' como enteros (también Di y juli pero esas son para las funciones enteras de arriba) así como 'bisiesto' que es lógico.
// 2.Llamar las funciones 'LeerFecha' con los argumentos de dia, mes y año. También llamar los días del mes, año bisiesto y el cálculo del día juliano.
// 3.Mostrar el día, mes y año ingresado (si es válido), así como la cantidad de días que tiene ese mes.
// 4.Finalmente, y lo que se nos pedia, mostrar los dias julianos.
Algoritmo Menú
    Definir dia, mes, año, Di,juli Como Entero
    Definir bisiesto Como Logico
	
	LeerFecha(dia, mes, año)
	Di = DiasDelMes(mes, año)
	bisiesto = EsBisiesto(año)
	juli = Calcular_Dia_Juliano(dia, mes, año)

	Imprimir "Día ingresado: ", dia
	Imprimir "Mes ingresado: ", mes
	Imprimir "Año ingresado: ", año
	Imprimir "Ese mes tiene ", Di, " días"
	Imprimir "Dia juliano: ",juli
FinAlgoritmo