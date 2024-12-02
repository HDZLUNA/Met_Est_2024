#EXAMEN PARCIAl


parcelas <- read.csv(parcelas, header= T)
View(parcelas)

boxplot(parcelas$Diámetro)
mean(parcelas$Diámetro)

#separacion
parcelas_A <- read.csv("parcelas_A.csv", header = T)
parcelas_B <- read.csv("parcelas_B.csv", header = T)

# valor de p en datos de la distribucion normal 

t.test(parcelas$Diámetro)

shapiro.test(parcelas$Diámetro)
summary(parcelas$Diámetro)

#prueba de diferencia de parcelas A y B
tapply(parcelas$Diámetro)





