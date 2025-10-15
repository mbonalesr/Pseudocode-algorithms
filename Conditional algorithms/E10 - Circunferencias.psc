//Ejercicio 10 - Estructura condicional
//Problema: Algoritmo que pida los puntos centrales x1,y1,x2,y2 y los radios r1,r2 de dos circunferencias y las clasifique en uno de estos estados:
//-Exteriores
//-Tangentes exteriores
//-Secantes
//-Tangentes interiores
//-Interiores
//-Concéntricas
//Entrada: Los puntos centrales del primer círculo x1,y1 y su radio r1, los puntos centrales del segundo circulo x2,y2 y su radio r2-
//Salida: Un mensaje con cualquiera de los estados en donde se cumplan la función.
//Diseño:
//1.Pedirle al usuario que ponga los puntos centrales y el radio del primer círculo.
//2.Pedirle al usuario que ponga los puntos centrales y el radio del segundo círculo.
//3.Calcular la distancia 'd' = raiz((x2-x1)^2 + (y2-y1)^2)
//4.Analizar cada caso.
//5.Si son exteriores es porque d > (r1+r2)
//6.Si son tangentes exteriores es porque d = (r1+r2)
//7.Si son secantes es porque d < (r1+r2) Y d > abs(r1-r2)
//8.Si son interiores es porque d > 0 Y d < abs(r1-r2)
//9.Si son tangentes interiores es porque d = (r1-r2)
//10.Si son concéntricas es porque d = 0
Algoritmo Circunferencias
	Definir x1,y1,x2,y2,r1,r2,d Como Real
	Imprimir "Cuál es el valor de x1:"
	Leer x1
	Imprimir "Cuál es el valor de y1:"
	Leer y1
	Imprimir "Cuál es el valor de x2:"
	Leer x2
	Imprimir "Cuál es el valor de y2:"
	Leer y2
	Imprimir "Cuál es el valor de r1:"
	Leer r1
	Imprimir "Cuál es el valor de r2:"
	Leer r2
	d = raiz((x2-x1)^2 + (y2-y1)^2)
	
	Si d > (r1+r2) Entonces
		Imprimir "Círculos exteriores"
	FinSi
	
	Si d = (r1+r2) Entonces
		Imprimir "Círculos tangentes exteriores"
	FinSi
	
	Si d < (r1+r2) Y d > abs(r1-r2) Entonces
		Imprimir "Círculos secantes"
	FinSi
	
	Si d > 0 Y d < abs(r1-r2) Entonces
		Imprimir "Círculos interiores"
	FinSi
	
	Si d = (r1-r2) Entonces
		Imprimir "Círculos tangentes interiores"
	FinSi
	
	Si d = 0 Entonces
		Imprimir "Círculos concéntricos"
	FinSi
FinAlgoritmo
