# jahir ezequiel Hernandez Luna
# 2177108
# 20/08/2024

# problema 1 --------------------------------------------------------------

#ingresar en objets la superficie redorestada por especie

pinus <-  3140
mezquite <- 1453
encino <- 450
teka <- 1200
juniperus <- 720


superficie <- c(pinus,mezquite,encino,teka,juniperus)
sup <- c(3140,1453,450,1200,720)

sup
superficie

#operaciones
#transformae de ha a m2
superficie * 10000
sup * 10000
m2 <- superficie * 10000

nombre <- c( "pinus" , "mez", "encino" , "teka" , "juni")
sup2 <- sort(sup, decreasing = )
barplot(superficie, ylim = c(0,2500),)
        col = "indianred", names.arg = nombre,
        xlab = "especies",
        ylab = "superficie (ha)",
        mai = " reportes CONAFORT"
        
      
        
        

        