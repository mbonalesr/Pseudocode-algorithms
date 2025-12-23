// Ejercicio 10 - Funciones
// Problema: Escribir dos funciones que permitan calcular:
// a)La cantidad de segundos en un tiempo dado en horas, minutos y segundos.
// b)La cantidad de horas, minutos y segundos de un tiempo dado en segundos.
// Escribe un programa principal con un menú donde se pueda elegir la opción de convertir a segundos, convertir a horas,minutos y segundos o salir del programa.
// Diseño:
// 1.Hacer la función 'Convert_seg' con argumentos 'h','m',s'
// 1.2: Convertir las horas a segundo multiplicando por 3600 y guardarla en 'h_s'.
// 1.3: Convertir los minutos multiplicando por 60 y guardarla en 'm_s'.
// 1.4: Mantener los segundos iguales y guardarla en 's_s'.
// 1.5: Sumar las 3 variables y guardarlas en 'total_seg'.
// 1.6: Mostrar los resultados de entrada y la conversión de salida.

// 2.Hacer la función 'Convert_seg' y usar como argumento a 's'.
// 2.2: Sacar el trunco (valor entero) de 's' entre 3600 y guardarlo en 'hr'.
// 2.3: Sacar el trunco de 's' dividiendolo por el módulo entre 3600, luego dividiendo normal entre 60 y guardarlo en 'min'.
// 2.4: Dividir 's' por el módulo 60 y guardarlo en 'sg'.
// 2.5: Mostrar los resultados de entrada y la conversión de salida.

// 3.En el algoritmo, definir 'option', 'hora' y 'minuto' como valores enteros y 'segund' como real.
// 3.1: Hacer un repetir, hasta que 'option' tenga un valor de '3'
// 3.2: Dentro del repetir, mencionar las diferentes opciones, la '1' convertia a segundos, la '2' convertia a horas y minutos y la '3' para salir del programa.
// 3.3: Según la opción, si es '1', pedir las horas, minutos o segundos y llamar a la función 'Convert_seg'.
// 3.4: Si es la opción '2', pedir los segundos y llamar a la función 'Convert_hr_mn_s'.
// 3.5: Y si es la opción '3', dar un mensaje de despedida.

// Entrada: Las horas, minutos y segundos que el usuario ingrese (variables enteras y real).
// Salida: La conversión a segundos (variable real).
Funcion Convert_seg(h,m,s)
	h_s = h * 3600
	m_s = m * 60
	s_s = s
	total_seg = h_s + m_s + s_s
	Imprimir h," horas con ",m," minutos y ",s," segundos equivale a: ",total_seg," segundos"
FinFuncion

// Entrada: Los segundos que el usuario introduzca (variable real)
// Salida: Las horas, minutos y segundos convertidas (variables enteras y real).
Funcion Convert_hr_mn_s(s)
	hr = trunc(s / 3600)
	min = trunc((s % 3600) / 60)
	sg = s % 60
	Imprimir s," segundos equivale a: ",hr," hora(s) con ",min, " minutos y ",sg," segundos"
FinFuncion

// Entrada: La opción que elija el usuario en el menú (variable entera).
// Salida: Las llamadas de las funciones o el final del programa. 
Algoritmo Menú
	Definir option,hora,minuto Como Entero
	Definir segund Como Real
	Repetir
		Imprimir "Bienvenido, presione la opción que quiera obtener:"
		Imprimir "1. Convertir a segundos"
		Imprimir "2. Convertir a horas, minutos y segundos"
		Imprimir "3.Salir del programa"
		Leer option
		
		Segun option Hacer
			1: Imprimir Sin Saltar "Dime la hora: "
				Leer hora
				Imprimir Sin Saltar "Ahora los minutos: "
				Leer minuto
				Imprimir Sin Saltar "Finalmente, dime los segundos: "
				Leer segund
				Convert_seg(hora,minuto,segund)
				
			2: Imprimir Sin Saltar "Escribe los segundos: "
				Leer seg
				Convert_hr_mn_s(seg)
				
			3:Imprimir "Hasta luego, vuelva pronto"
		FinSegun
	Hasta Que option = 3 
FinAlgoritmo