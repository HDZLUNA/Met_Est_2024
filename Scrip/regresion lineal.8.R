#regresion lineal

geyser <- read.csv("erupciones.csv", header = T)

plot(geyser$waiting, geyser$eruptions,
     pch = 19, col = "red",
     xlab = "tiempo espera (min)",
     ylab = "Duración (min)")
abline(gy.lm)

range(geyser$eruptions)
range(geyser$waiting)
 
summary(geyser)

#revisar si exsiste una relacion lineal entre dos variuables.

cor.test(geyser$eruptions, geyser$waiting)
#se puede predecir el tiempo que tardo la erupcion en tiempo de espera en dos erupciones consecutivas.

lm(geyser$eruptions ~ geyser$waiting)
gy.lm <- lm(geyser$eruptions ~ geyser$waiting)

#comprobacion de si exsiste una relacion lineal
cor.test(geyser$eruptions, geyser$waiting)
cor.test(geyser$waiting, geyser$eruptions)

summary(geyser)
#agregar tablas del los valores

geyser$predicho <- gy.lm$fitted.values
geyser$yprima <- -1.874016 + 0.075628 * geyser$waiting
geyser$residual <- gy.lm$residuals^2

yprima <- c(70, 75, 82)
-1.87+0.075 * yprima
