//Ejercicio 16 - Estructura secuencial
//Problema: Dos veh�culos viajan a diferentes velocidades (v1 y v2) y est�n distanciados por una distancia d. El que est� detr�s viaja a una velocidad mayor. Se pide hacer un algoritmo para ingresar la distancia entre los dos veh�culos (km) y sus respectivas velocidades (km/h) y con esto determinar y mostrar en que tiempo (minutos) alcanzar� el veh�culo m�s r�pido al otro.
//Entrada: Velocidades v1 y v2, distancia d como variables reales.
//Salida: El tiempo en minutos en que el coche 2 alcanzar� al 1, tambi�n como variable real.
//Dise�o:
//1.Pedirle las velocidades de los vehiculos.
//2.Pedir la distancia entre ellos.
//3.Obtener la velocidad relativa haciendo la resta de v2-v1.
//4.Despejar 't' de v = d/t, quedar�a como t = d/v.
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
	Escribir "El veh�culo m�s r�pido alcanzar� al otro en ",min, " minutos."
FinAlgoritmo