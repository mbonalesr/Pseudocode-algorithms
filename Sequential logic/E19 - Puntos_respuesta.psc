//Ejercicio 19 - Estructura secuencial
//Problema: Escribir un algoritmo para calcular la nota final de un estudiante, considerando que: por cada respuesta correcta 5 puntos, por una incorrecta -1 y por respuestas en blanco 0. Imprime el resultado obtenido por el estudiante.
//Entrada: La cantidad de respuestas correctas, incorrectas así como en blanco, variable real.
//Salida: La calificación final del estudiante, variable real
//Diseño
//1.Pedirle al usuario que ingrese la cantidad de respuesta correctas y meterlas en una variable.
//2.Pedirle al usuario que ingrese la cantidad de respuesta incorrectas y meterlas en una variable.
//3.Realizar la fórmula multiplicando las respuestas correctas por 5, multiplicar por -1 las incorrectas.
//4.Mostrar resultados finales, con números del 1 al 10
Algoritmo Puntos_respuesta
	Definir correc,incorrec,calif_fin Como Real
	Escribir "Por favor, escribe la cantidad de respuestas correctas: "
	Leer correc
	Escribir "Ahora, escribe la cantidad de respuestas incorrectas: "
	Leer incorrec
	calif_fin = (correc * 5) + (incorrec * (-1)) Mod 10
	Escribir "Tu calificación final es: ",calif_fin
FinAlgoritmo
