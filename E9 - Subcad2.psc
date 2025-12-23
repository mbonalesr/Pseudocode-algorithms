//Ejercicio 9 - Cadenas de caracteres
//Problema: Realizar un programa que compruebe si una cadena contiene una subcadena. Las dos cadenas se introducen por teclado.
//Entrada: La cadena y subcadena (variable de cadena y caracteres).
//Salida: El mensaje si la subcadena aparece o no en la cadena (variable de cadena).
//Diseño:
// 1.Inicializar encontrada porque ahi veremos si la subcadena está en la cadena, verif que sea donde veremos si la cadena es igual a la subcadena y lim que sera para delimitar la posición máxima de inicio de la subcadena.
// 2.Pedirle al usuario que escriba una cadena.
// 3.Pedirle ahora que escriba una subcadena.
// 4.Definir que el limite es igual al limite de la cadena menos el de la subcadena más uno
// 5.Evaluar si la subcadena no tiene caracteres o es mayor que la cadena, mostrar un mensaje de error en la cadena.
// 6.Si si, hacer un mientras que vaya de i que sea menor o igual al límite y que encontrada sea falso.
// 7.Dentro del mientras hacer que verif se haga mediante la cadena de i hasta i más la longitud de la subcadena menos 1.
// 8.Ir sumando i en cada paso.
// 9.Si subcadena es igual a verif entonces cambiar encontrada como verdadero.
// 10.Simplemente imprimir que la subcadena está en la cadena o no, depende del resultado.
Algoritmo Subcad2
	Definir cad,subc,verif como Cadena
	Definir i,lim Como Entero // i será tu contador para recorrer la cadena principal posición por posición. lim es una variable que guarda la última posición de inicio posible para buscar la subcadena dentro de la cadena principal sin pasarte del final.
	Definir encontrada Como Logico 
	encontrada = Falso
	verif = ""
	i = 1
	
	Imprimir Sin Saltar "Escribe lo que sea: "
	Leer cad
	Imprimir Sin Saltar "Ahora otra cosa: "
	Leer subc
	
	lim = Longitud(cad) - Longitud(subc) + 1
	
	Si Longitud(subc) = 0 O Longitud(subc) > Longitud(cad) Entonces
		Imprimir "Error, cantidad inválida de la subcadena"
	SiNo
		Mientras i <= lim Y encontrada = Falso Hacer
			verif = Subcadena(cad, i, i + Longitud(subc) - 1)
			i = i + 1
			Si subc = verif Entonces
				encontrada = Verdadero
			FinSi
		FinMientras
	FinSi
	
	Si encontrada Entonces
		Imprimir "La subcadena SÍ está dentro de la cadena es: ", subc
	SiNo
		Imprimir "La subcadena NO está dentro de la cadena"
	FinSi
FinAlgoritmo