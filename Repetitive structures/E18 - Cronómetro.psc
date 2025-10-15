// Ejercicio 18 - Estructura repetitiva
// Problema: Hacer un programa que muestre un cronometro, indicando las horas, minutos y segundos.
// Entrada: No hay.
// Salida: Las HH:MM:SS (Variables enteras y real).
// Diseño:
// 1.Hacer 3 para, uno para las horas, otro para los minutos y el último para los segundos.
// 2.Dentro del para de los segundos, hacer un si para los tres casos donde si num < 10, que imprima "0",num
Algoritmo Cronometro
    Definir HH, MM, SS Como Entero
    
    Imprimir "Cronómetro"
    
    Para HH = 0 Hasta 23 Hacer
        Para MM = 0 Hasta 59 Hacer
            Para SS = 0 Hasta 59 Hacer
                Si HH < 10 Entonces
                    Escribir Sin Saltar "0", HH
                SiNo
                    Escribir Sin Saltar HH
                FinSi
                Escribir Sin Saltar ":"
                
                Si MM < 10 Entonces
                    Escribir Sin Saltar "0", MM
                SiNo
                    Escribir Sin Saltar MM
                FinSi
                Escribir Sin Saltar ":"
                
                Si SS < 10 Entonces
                    Escribir "0", SS
                SiNo
                    Escribir SS
                FinSi
                Esperar 1 Segundos
            FinPara
        FinPara
    FinPara
FinAlgoritmo
