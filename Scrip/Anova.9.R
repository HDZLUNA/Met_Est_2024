# realizacion de practica de anova y tukey
#experimento de cuatro parajes y sus diametros


paraje <- read.csv("ANOVA.csv", header = T)

paraje$Paraje <- as.factor(paraje$Paraje)
boxplot(paraje$DAP ~ paraje$Paraje,
        col= "red",
        xlab = "Paraje",
        ylab = "Diametro")

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var)

shapiro.test(paraje$DAP)
bartlett.test(paraje$DAP ~ paraje$Paraje)

par.aov <- aov(paraje$DAP ~ paraje$Paraje)  
summary(par.aov)

#prueba dfe tukey
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov), las =1)
