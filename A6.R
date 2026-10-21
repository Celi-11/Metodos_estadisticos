modelo <- lm(EDAD ~ DAP, data = datos_control_Rascon)
summary(modelo)

coeficientes <- coef(modelo)
alpha <- coeficientes[1]
beta <- coeficientes [2]

alpha
beta

cat("Ecuación: EDAD estimada =",
    round(alpha, 4), "+",
    round(beta, 4), "* DAP\n")

resumen <- summary(modelo)
tabla <- resumen$coefficients

plot(datos_control_Rascon$DAP, datos_control_Rascon$EDAD,
     xlab = "DAP (cm)",
     ylab = "EDAD (años)",
     main = "DAP y edad de Pinus arizonica",
     pch = 19)
abline(modelo, col = "red", lwd = 2)

nuevos <- data.frame(DAP = c(12, 20, 26, 34, 45))

predicciones <- predict(modelo, newdata = nuevos)

resultado <- data.frame(
  DAP = nuevos$DAP,
  Edad_estimada = round(predicciones, 2)
)
print(resultado)