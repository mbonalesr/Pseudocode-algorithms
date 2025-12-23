//Ejercicio 15 - Arreglos
//Problema: Crear un programa de ordenador para gestionar los resultados de la quiniela de fútbol. Para ello vamos a utilizar dos tablas:
// - Equipos: Que es una tabla de cadenas donde guardamos en cada columna el nombre de los equipos de cada partido. En la quiniela se indican 9 partidos.
// - Resultados: Es una tabla de enteros donde se indica el resultado. También tiene dos columnas, en la primera se guarda el número de goles del equipo que está guardado en la primera columna de la tabla anterior, y en la segunda los goles del otro equipo.
//El programa ira pidiendo los nombres de los equipos de cada partido y el resultado del partido, a continuación se imprimirá la quiniela de esa jornada.
//¿Qué modificación habría que hacer en las tablas para guardar todos los resultados de todas las jornadas de la temporada?
//Entrada: Los 18 equipos y los resultados (variable de cadena y entera).
//Salida: La quiniela con el nombre del primer equipo, sus goles, los goles del segundo y su nombre.
//Diseño:
// 1.Crear la tabla 'equipos' con dimensiones 9x2 y la tabla 'resultados' con las mismas dimensiones.
// 2.Definir la variable 'partidos' como entero, ya que será donde estará nuestro indice.
// 3.Hacer un para de 1 a 9
// 4.Dentro del para, pedir el nombre del equipo local y guardarla en el vector equipos, con 'partidos' como indice y el 1 ya que estará en la primera columna.
// 5.Pedir el nombre del equipo visitante y guardarla en el vector equipos, con 'partidos' como indice y el 2 ya que estará en la segunda columna.
// 6.Ahora hacemos lo mismo pero con los goles del local y del visitante, también comparten los mismos índices.
// 7.Hacer otro para de 1 a 9
// 8.Dentro del para mostrar el equipo local y sus goles, a lado los goles de la visita y su nombre.
Algoritmo TT_quiniela
	Definir equipos como Cadena
	Definir resultados,partidos Como Entero
	Dimension equipos[9,2],resultados[9,2]
	
	Imprimir "Liga MX 2025"
	Para partidos = 1 Hasta 9 Hacer
		Imprimir Sin Saltar "Dime el nombre del equipo local: "
		Leer equipos[partidos,1]
		Imprimir Sin Saltar "Dime el nombre del equipo visitante: "
		Leer equipos[partidos,2]
		Imprimir Sin Saltar "Cuántos goles metió el ",equipos[partidos,1],"?"
		Leer resultados[partidos,1]
		Imprimir Sin Saltar "Cuántos goles metió el ",equipos[partidos,2],"?"
		Leer resultados[partidos,2]
	FinPara
	
	Para partidos = 1 Hasta 9 Hacer
		Imprimir equipos[partidos,1]," ",resultados[partidos,1]," - ",resultados[partidos,2]," ",equipos[partidos,2]
	FinPara
FinAlgoritmo
