// Ejercicio 1 - Funciones
// Problema: Crea un procedimiento EscribirCentrado, que reciba como parámetro un texto y lo escriba centrado en pantalla (suponiendo una anchura de 80 columnas; pista: deberás escribir 40 - longitud/2 espacios antes del texto). Además subraya el mensaje utilizando el carácter =.
// Entrada: El texto que queramos centrar y subrayar (variable de cadena).
// Salida: El texto centrado y subrayado (variable de cadena).
// Diseño:
// 1.Hacer la función o procedimiento 'EscribirCentrado', con el argumento llamado 'text'.
// 2.Calcular espacios restando 40 - longitud del texto / 2 y guardarla en la variable 'espacio'.
// 3.Hacer un para de 1 hasta espacio donde imprimamos espacios, esto con la finalidad de que el texto vaya centrado.
// 4.Mostrar el texto.
// 5.Hacer otro para de 1 hasta espacio donde imprimamos espacios, esto con la finalidad de que el subrayado vaya centrado.
// 6.Para hacer el subrayado, hacer un para de 1 a longitud del texto donde se impriman "=".
// 7.Imprimir despues los espacios.
// 8.Definir el algoritmo donde pondremos 'titulo' como cadena.
// 9.Ponerle texto al título.
// 10.Llamar a la función usando de argumento el titulo.
Funcion EscribirCentrado (text)
	Definir espacio Como Entero
	espacio = 40 - (Longitud(text) / 2)
	
	//Espacios antes del texto
	Para i = 1 Hasta espacio Hacer
		Imprimir Sin Saltar " "
	FinPara
	
	Imprimir text
	
	//Espacio antes del subrayado
	Para i = 1 Hasta espacio Hacer
		Imprimir Sin Saltar " "
	FinPara
	
	Para i = 1 Hasta Longitud(text) Hacer
		Imprimir Sin Saltar "="
	FinPara
	Imprimir ""
FinFuncion

Algoritmo Centrado_sub
	Definir titulo como Cadena
	titulo = "Escuadrón Latino"
	EscribirCentrado(titulo)
FinAlgoritmo