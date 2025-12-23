//Ejercicio 2 - Arreglos
//Problema: Crear un vector de 5 elementos de cadenas de caracteres, inicializa el vector con datos leídos por el teclado. Copia los elementos del vector en otro vector pero en orden inverso, y muéstralo por la pantalla.
//Entrada: Las 5 cadenas de caracteres que el usuario escriba (variable de cadena).
//Salida: Las 5 cadenas de caracteres invertidas (variable de cadena).
//Diseño:
// 1.Crear un vector de cadenas con dimension igual a 5.
// 2.Hacer otro vector de cadenas invertido con las mismas dimensiones que el normal.
// 3.Hacer un para que vaya de 1 a 5.
// 4.Dentro del para, pedirle al usuario que escriba lo que sea y leer lo que escribió.
// 5.Hacer otro para, que vaya de la longitud del otro vector hasta 1, con paso -1.
// 6.Invertir la cadena original mediante una subcadena del vector i, i, i.
// 7.Mostrar el vector con la cadena original así como el vector invertido.
Algoritmo Vector_inverso
	Definir vector_c,vector_i como Cadena
	Definir dest Como Entero
	Dimension vector_c[5]
	Dimension vector_i[5]
	Para i = 1 Hasta 5 Hacer
		Imprimir Sin Saltar i,".- Escribe lo que quieras: "
		Leer vector_c[i]
	FinPara
	
	Para j = 5 Hasta 1 Con Paso -1 Hacer
		dest = 6 - j
		vector_i[dest] = vector_c[j]
		Imprimir vector_i[dest]
	FinPara
FinAlgoritmo
