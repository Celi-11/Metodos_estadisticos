# Correlación de continuación

# Ingresar pares de datos

x1 <- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y1 <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

mean(x1)
mean(y1)
cor.test(x1,y1)

# Gráfica de los datos
par(mfrow = c(2,2)) #Configurar gráficas 2x2

plot(x1, y1, col= "red",
     main="conjunto 1", pch =19)

plot(x1, y1, col= "green",
     main="conjunto 1", pch =19)

plot(x1, y1, col= "blue",
     main="conjunto 1", pch =19)

plot(x1, y1, col= "gray",
     main="conjunto 1", pch =19)