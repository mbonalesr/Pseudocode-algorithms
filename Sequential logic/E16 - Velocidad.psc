//Ejercicio 16 - Estructura secuencial
//Problema: Dos vehículos viajan a diferentes velocidades (v1 y v2) y están distanciados por una distancia d. El que está detrás viaja a una velocidad mayor. Se pide hacer un algoritmo para ingresar la distancia entre los dos vehículos (km) y sus respectivas velocidades (km/h) y con esto determinar y mostrar en que tiempo (minutos) alcanzará el vehículo más rápido al otro.
//Entrada: Velocidades v1 y v2, distancia d como variables reales.
//Salida: El tiempo en minutos en que el coche 2 alcanzará al 1, también como variable real.
//Diseño:
//1.Pedirle las velocidades de los vehiculos.
//2.Pedir la distancia entre ellos.
//3.Obtener la velocidad relativa haciendo la resta de v2-v1.
//4.Despejar 't' de v = d/t, quedaría como t = d/v.
//5.Convertir el resultado de t a t % 60 para obtener los minutos en que el coche v2 pasara a v1.
//6.Mostrar resultados.
Algoritmo Velocidad
	Definir v1,v2,d,t Como Real
	Definir min Como Entero
	Escribir "Escribe la velocidad del primer coche (en km/hr): "
	Leer v1
	Escribir "Escribe la velocidad del segundo coche (en km/hr): "
	Leer v2
	Escribir "Escribe la distancia que separa a ambos coches (en km): "
	Leer d
	t = d / (v2-v1)
	min = t * 60
	Escribir "El vehículo más rápido alcanzará al otro en ",min, " minutos."
FinAlgoritmo