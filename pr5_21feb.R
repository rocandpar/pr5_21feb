#1
library(ggplot2)
n <- 200
set.seed(123)
Site <- sample(paste0("Site",1:10), n, replace = TRUE)
Num.artefactos <- sample(paste0(1:1000), n, replace = TRUE)
Tipo.artefactos <- sample(c("pottery","tools", "jewelry", "weapons"), n, replace = TRUE)
Contexto <- sample(c("habitacional", "funerario", "otros"), n, replace =TRUE)
Latitudd <- runif(n, min= 0, max= 90)
Longitudd <- runif(n, min= -180, max= 180)
archaeology_data <- data.frame(
   Yacimiento = c(Site),
   NúmerodeArtefactos = c(Num.artefactos), 
   TipoDeArtefactos = c(Tipo.artefactos),
   Contextos = c(Contexto),
   Latitud = c(Latitudd),
   Lonigtud = c(Longitudd))
View(archaeology_data)

#2
media_numero_artefactos <- mean(archaeology_data$NúmerodeArtefactos)
