library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

conjunto$Clase <- as.factor(conjunto$Clase)
conjunto$Especie <- as.factor(conjunto$Especie)
summary(conjunto)

boxplot(conjunto$Altura ~ conjunto$Especie,
        xlab = "especie",
        ylab = "Diametro(cm)",
        col = "lightgreen")



        