#importar datos de githud

url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)

boxplot(madera$Peso_g ~ madera$Especie)

shapiro.test(madera$Peso_g)

bartlett.test(madera$Peso_g ~ madera$Especie)

madera$Peso_t <- sqrt(madera$Peso_g+ 0.5)

boxplot(madera$Peso_t ~ madera$Especie)


t.test(madera$Peso_g ~ madera$Especie, var.equal =F)
t.test(madera$Peso_g ~ madera$Especie, var.equal =T)

boxplot(madera$Lado_C ~ madera$Especie)

shapiro.test(madera$Lado_C)

bartlett.test(madera$Lado_C ~ madera$Especie)

madera$Lado_C <- sqrt(madera$Lado_C+ 0.5)

boxplot(madera$Lado_C ~ madera$Especie)

which(madera$Lado_C > 20.5)
