# ==============================================================================
# Asignación 6: Regresión lineal
# Ejercicio 1. Relación entre el diámetro (DAP) y la edad en Pinus arizonica
# ------------------------------------------------------------------------------
# Nombre del alumno:Celina Yazmin Puente Uribe
# Matrícula: 2274723
# Fecha: 21/10/2026
# ==============================================================================


# ------------------------------------------------------------------------------
# 0. Preparación
# ------------------------------------------------------------------------------
# - Cargue los paquetes que vaya a utilizar (si los necesita).
# - Defina la dirección de los datos:
#   https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1

# ------------------------------------------------------------------------------
# 1. Importación y exploración de los datos
# ------------------------------------------------------------------------------
# - Importe los datos y guárdelos en un objeto.
# - Revise la estructura, los nombres de las variables y el número de árboles.
# - Obtenga estadísticos descriptivos de DAP y EDAD.



# Número de árboles (n): 60
# Comentario sobre los datos:
# Se analizarón 60 arboles de Pinus arizonica para estudiar la relación entre
# el diámetro a la altura del pecho (DAP) y la edad.

# ------------------------------------------------------------------------------
# 2. Diagrama de dispersión
# ------------------------------------------------------------------------------
# - Grafique DAP (eje x, variable independiente) contra EDAD (eje y, variable
#   dependiente). Incluya etiquetas de ejes con unidades.


# ¿Qué patrón observa? (forma, dirección, valores atípicos):
# Se observa un patrón lineal con dirección positiva, ya que a medida que aumenta 
# el DAP , también aumenta la edad de los arboles.
# ------------------------------------------------------------------------------
# 3. Hipótesis
# ------------------------------------------------------------------------------
# H0 (en palabras): No existe una relación lineal significativa entre el DAP y la edad de los árboles.
# H0 (en notación): B = 0
#
# H1 (en palabras): Existe una relación lineal significativa entre DAP y la edad de los árboles. 
# H1 (en notación): B ≠ 0
#
# Nivel de significancia: 3.201e-14

# ------------------------------------------------------------------------------
# 4. Ajuste del modelo de regresión lineal simple
# ------------------------------------------------------------------------------
# Modelo: EDAD = alpha + beta * DAP + error
# - Ajuste el modelo y guárdelo en un objeto.
# - Muestre el resumen del modelo.

# ------------------------------------------------------------------------------
# 5. Coeficientes
# ------------------------------------------------------------------------------
# Intercepto (alpha): -8.4803
# Interpretación: Es la edad estimada cuando el DAP es de 0cm 
#
# Pendiente (beta): 2.4316
# Interpretación (años por cada cm de DAP): Por cada centímetro que aumenta el
# DAP, la edad estimada aumenta.
#
# Ecuación ajustada:  EDAD estimada = -8.4803 + 2.4316


# ------------------------------------------------------------------------------
# 6. Significancia
# ------------------------------------------------------------------------------
# a) Intercepto      -> p-value: 0.168   ¿Significativo? (Sí/No): No
# b) Pendiente       -> p-value: 3.2e-14 ¿Significativo? (Sí/No): Si
# c) Regresión       -> F: 99.83   gl: 1 y 58    p-value: 3.2e-14
#    ¿Es significativa la regresión? (Sí/No): Si
# d) R2: 0.6325
#    Interpretación: El DAP explica el 63.25% de la variación observada en
#    la edad de los arboles
# Decisión sobre H0: Se rechaza la hipótesis nula porque el valor de p de la
# pendiente es menor que 0.05. Existe evidencia estadística de una relación
# lineal entre DAP y la edad

# ------------------------------------------------------------------------------
# 7. Gráfica con la recta de regresión
# ------------------------------------------------------------------------------
# - Agregue la recta ajustada al diagrama de dispersión del paso 2.

# ------------------------------------------------------------------------------
# 8. Predicción de la edad
# ------------------------------------------------------------------------------
# - Cree un objeto con los DAP a estimar: 12, 20, 26, 34 y 45 cm.
# - Calcule la edad estimada aplicando la ecuación ajustada (cálculo manual).
# - Verifique los resultados usando el modelo ajustado.
# - Presente los resultados en una tabla.


# | No. | DAP (cm) | Edad estimada (años) |
# |-----|----------|----------------------|
# |  1  |    12    |       20.70          |
# |  2  |    20    |       40.15          |
# |  3  |    26    |       54.74          |
# |  4  |    34    |       74.19          |
# |  5  |    45    |      100.94          |
#
# ¿Algún DAP queda fuera del intervalo observado en los datos?
# No, solo el 45 queda cerca del límite.

# ------------------------------------------------------------------------------
# 9. Conclusión
# ------------------------------------------------------------------------------
# ¿Es el DAP un buen predictor de la edad en Pinus arizonica?
# Puede utilizarse como predictor de Pinus Arizonica, ya que la gráfica muestra 
# una relación positiva entre ambas variables.
# Una limitación del modelo:
# El modelo supone que existe una relación entre DAP y la edad, pero el
# crecimiento de los arboles también depende depende de factores como
# condiciones ambientales, disponibilidad de agua, competencia y calidad de suelo.
