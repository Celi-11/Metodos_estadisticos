# Correlación
# Importar datos de la altura y diametro 

erupciones <- faithful

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 19, col = "red")
     
#Conocer el rango del tiempo
range(erupciones$waiting)

#Conocer el rango de la erupcion
range(erupciones$eruptions)

boxplot(erupciones$eruptions)
fivenum(erupciones$eruptions)

cor.test(erupciones$eruptions, erupciones$waiting)
