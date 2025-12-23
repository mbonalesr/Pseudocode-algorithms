//Ejercicio 6 - Cadenas de caracteres
//Problema: Realizar un programa que dada una cadena de caracteres por caracteres, genere otra cadena resultado de invertir la primera.
//Entrada: La cadena que el usuario escriba (variable de cadena).
//Salida: La cadena invertida (variable de caracteres).
//Diseño:
// 1.Pedirle al usuario que escriba la palabra que sea y leerla.
// 2.Iniciar la variable inversion como una cadena vacia "".
// 3.Hacer un para invertido, que vaya de la longitud de la palabra hasta 1 con el paso -1
// 4.Dentro del para
Algoritmo Invertido
	Definir palabra,inversion como Cadena
	inversion = ""
	Imprimir Sin Saltar "Escribe la palabra que sea: "
	Leer palabra
	Para i = Longitud(palabra) Hasta 1 Con Paso -1 Hacer
		inversion = inversion + Subcadena(palabra,i,i)
	FinPara
	Imprimir "La palabra inversa es: ",inversion
FinAlgoritmo
//Siempre asignar en la i sin importar el orden