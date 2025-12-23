//Ejercicio 9 - Arreglos
//Problema: Queremos guardar la temperatura mínima y máxima de 5 días. realiza un programa que de la siguiente información:
// - La temperatura media de cada día.
// - Los días con menos temperatura.
// - Se lee una temperatura por teclado y se muestran los días cuya temperatura máxima coincide con ella. si no existe ningún día se muestra un mensaje de información.
//Entrada: Las 5 temperaturas (ºC) ingresadas por el usuario (variable real).
//Salida: El promedio de temperatura, los días más frios y más calientes (variable reales)
//Diseño:
// 1.Definir el vector 'min', 'max' y 'media' como real y con dimension igual a 5.
// 2.Para cada uno de los 5 días:
//  2.1:Se pide al usuario la temperatura mínima y máxima.
//  2.2: Se valida que:
//    a) La mínima esté entre 20°C y 25°C.
//    b) La máxima esté entre 5°C y 50°C.
//    c) La mínima no sea mayor que la máxima.
//  2.3: Si alguna condición falla, se muestra un mensaje y se repite la entrada.
//  2.4: Una vez validadas ambas temperaturas, se calcula la media del día.
// 3.Las temperaturas mínimas, máximas y medias se guardan en vectores paralelos.
// 4.Ahora se mostraran las temperaturas promedio de cada día con un para de 1 a 5.
//  4.1:Dentro de este para simplemente se mostrarán los dias con la media de temperatura ya calculada anteriormente en el otro para.
// 5.Ahora obtendremos los días con menor temperatura, haremos otro para de 1 a 5 y se hara igualando la variable 'menor' al primer valor de min, se comparara con un si el min es menor a menos entonces menos toma ese valor.
// 6.Ahora para mostrar esas temperaturas menores haremos otro para de 1 a 5 donde e recorre nuevamente el vector min y para cada día, si la temperatura mínima coincide con el valor menos, se imprime el número de día.
// 7.Después se le solicitará al usuario que escriba la temperatura màxima que quiera buscar, se inicializa la variable lógica 'encontrada' en Falso.
//  7.1:Se hara un último para de 1 a 5 donde se evaluará si en el vector max es igual a la temperatura buscada, si si, la variable de control 'encontrada' cambiara a verdadero y se mostrará esa temperatura que coincide con el día en que se registro
//  7.2:Salimos del para y evaluamos si encontrada sigue siendo falso y si es cierto, escribimos un mensaje de error.

Algoritmo V_temperatura
	Definir encontrada Como Logico
	Definir min,max,media,menos,temp_busc Como Real
	Dimension min[5],max[5],media[5]
	
	//Obtener todas las temperaturas máximas y mínimas
	Para i = 1 Hasta 5 Hacer
		Repetir
			Imprimir Sin Saltar "Dime la temperatura mínima (ºC) del día ",i,":"
			Leer min[i]
			Si min[i] < -20 O min[i] > 25 Entonces
				Imprimir "Temperatura inválida, intenta nuevamente"
			FinSi
			
			Imprimir Sin Saltar "Dime la temperatura máxima (ºC) del día ",i,":"
			Leer max[i]
			Si max[i] < -5 O max[i] > 50 Entonces
				Imprimir "Temperatura inválida, intenta nuevamente"
			FinSi
			
			Si min[i] > max[i] Entonces
				Imprimir "La temperatura mínima no puede ser mayor que la máxima"
			FinSi
		Hasta Que (min[i] >= -20 Y min[i] <= 25) Y (max[i] >= -5 Y max[i] <= 50) Y (max[i] > min[i])
		
		media[i] = (min[i] + max[i]) / 2
	FinPara
	
	//Mostrar la temperatura promedio de cada día
	Imprimir "Temperaturas promedio"
	Para i = 1 Hasta 5 Hacer
		Imprimir "Día ",i,": ",media[i]," ºC"
	FinPara
	
	//Obtener los días con menos temperatura
	menos = min[1]
	Para j = 2 Hasta 5 Hacer
		Si min[j] < menos Entonces
			menos = min[j]
		FinSi
	FinPara
	Imprimir "Día(s) con la temperatura mínima (",menos,")"
	
	//Mostrar los días con menor temperatura
	Para k = 1 Hasta 5 Hacer
		Si min[k] = menos Entonces
			Imprimir "- Día ",k,": ",min[k]," ºC"
		FinSi
	FinPara
	
	//Leer temperatura por teclado y ver si coincide con una de las máximas
	Imprimir Sin Saltar "Escribe la temperatura máxima que quieras encontrar (ºC): "
	Leer temp_busc
	encontrada = Falso
	
	Para l = 1 Hasta 5 Hacer
		Si max[l] = temp_busc Entonces
			encontrada = Verdadero
			Imprimir "La temperatura ",temp_busc,"ºC coincide con el día ",l
		FinSi
	FinPara
	
	Si encontrada = Falso Entonces
		Imprimir "Ningún día coincide con la temperatura máxima tecleada"
	FinSi
FinAlgoritmo
