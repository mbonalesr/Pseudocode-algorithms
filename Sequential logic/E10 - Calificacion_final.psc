//Ejercicio 10 - Estructura secuencial
//Problema: Un alumno desea saber cual será su calificación final en la materia de Algoritmos. Dicha calificación se compone de los siguientes porcentajes:
//55% del promedio de sus tres calificaciones parciales.
//30% de la calificación del examen final.
//15% de la calificación de un trabajo final.
//Entrada: El usuario ingresa el resultado de los tres parciales, de su examen final y de su trabajo final.
//Salida: Mostrar la calificación final con las ponderaciones.
//Diseño:
//1.Pedirle al usuario los tres parciales
//2.Obtener promedio de los tres parciales y multiplicarla por 0.55
//3.Pedirle al usuario su calificación del examen final.
//4.Multiplicarla por 0.3
//5.Pedirle al usuario su calificación del trabajo final. 
//6.Multiplicarla por 0.15
//7.Sumar todas las ponderaciones y mostrar resultados.
Algoritmo Calificacion_final
	Definir parc1,parc2,parc3,parc_t,examen_f,examen_pon,trab_f,trab_pon,calif_final Como Real
	Escribir "Ingresa tu primera calificación parcial: "
	Leer parc1
	Escribir "Ingresa tu segunda calificación parcial: "
	Leer parc2
	Escribir "Ingresa tu tercera calificación parcial: "
	Leer parc3
	parc_t = ((parc1 + parc2 + parc3) / 3) * (0.55)
	Escribir "Ingresa tu calificación del examen final: "
	Leer examen_f
	examen_pon = examen_f * 0.3
	Escribir "Ingresa tu calificación del trabajo final: "
	Leer trab_f
	trab_pon = trab_f * 0.15
	calif_final = parc_t + examen_pon + trab_pon
	Escribir "Tu calificación final es: ",calif_final
FinAlgoritmo