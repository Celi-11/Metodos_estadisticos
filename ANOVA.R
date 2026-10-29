# Ánalisis de varianza ANOVA

pinos <- read.csv("Datos_Rascon_Anova.CSV")

boxplot(pinos$DAP ~ pinos$Paraje,
        col = "lightblue",
        xlab = "Parajes",
        main = "Analisis de varianza")

tapply(pinos$DAP, pinos$Paraje, mean)
tapply(pinos$DAP, pinos$Paraje, var)


# Función aov

pin.aov <- aov(pinos$DAP ~ pinos$Paraje)
summary(pin.aov)

# La función de TukeyHSD() me ayuda a encontrar las diferencias
TukeyHSD(pin.aov)

plot(TukeyHSD(pin.aov))