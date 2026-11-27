# ==============================================================
# Evaluación III - Principios de estadística
# Anillos de crecimiento y temperatura
#
# Nombre:Celina Yazmin Puente Uribe
# Matrícula:2274723
# ==============================================================


# ==============================================================
# EJERCICIO 1
# ==============================================================

# --- a) Ingresar los datos en el objeto "anillos" ---------------
#        Variables: Temperatura (AFres, ACal) y Ancho (mm)

AFres <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)

ACal <-c(2.51, 1.90, 3.20, 2.55, 1.92, 2.84, 3.41, 2.12, 2.70, 2.66 )

# --- b) Hipótesis de partida ------------------------------------
# H0: AFres = ACal
# H1: Afres ≠ ACal


# --- c) Media de AFres y ACal -----------------------------------

mean(AFres)
mean(ACal)

# --- d) Desviación estándar de AFres y ACal ---------------------

sd(AFres)
sd(ACal)

# --- e) Diferencia media entre ambos años -----------------------

mean (AFres) - mean (ACal)

# --- f) Valor de t ----------------------------------------------

t.test(AFres, ACal, paired = TRUE)

# --- g) ¿Diferencias significativas? / Parámetro / Valor --------

# No hay diferencias significativas porque P= 0.849> 0.05

# --- h) Conclusión sobre la decisión del responsable ------------
# Respuesta: No es correcta la conclusión ya que no hay evidencia significativa que 
# demuestre que las temperaturas esten afectando el crecimiento de los pinos.


# ==============================================================
# EJERCICIO 2
# ==============================================================

# --- Ingresar los datos -----------------------------------------

AFres <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal <- c(2.10, 1.82, 2.64, 2.48, 1.70, 2.41, 2.95, 2.15, 2.30, 2.35)

# --- Hipótesis --------------------------------------------------
# H0: AFres = ACal
# H1: Afres ≠ ACal


# --- a) Media de AFres y ACal -----------------------------------

mean(AFres)
mean(ACal)

# --- b) Desviación estándar de AFres y ACal ---------------------

sd(AFres)
sd(ACal)

# --- c) Diferencia media entre ambos años -----------------------

mean (AFres) - mean (ACal)

# --- d) Valor de t ----------------------------------------------

t.test(AFres, ACal)

# --- e) ¿Diferencias significativas? / Parámetro / Valor --------

# No hay diferencias significativas entre ambos parametros ya que P= 0.141> 0.05

# --- f) Decisión de la Comisión Forestal ------------------------
# Respuesta: No hay evidencia suficiente que demuestre que el lugar es vulnerable
# al aumento en las tempreaturas por una reducción del crecimiento en los anillos
