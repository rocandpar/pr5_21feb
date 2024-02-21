#1
library(ggplot2)
n <- 200
set.seed(123)
Site <- sample(paste0("Site",1:10), n, replace = TRUE)
Num.artefactos <- sample(1:1000, n, replace = TRUE)
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
print(media_numero_artefactos)
str(archaeology_data)
cuartiles_numero_artefactos <- quantile(archaeology_data$NúmerodeArtefactos)
print(cuartiles_numero_artefactos)

#3
hist_numero_artefactos <- hist(archaeology_data$NúmerodeArtefactos,
                               main = "Número de artefactos",
                               col = "pink")

#4
cajabigote_numero_artefactos <- boxplot(archaeology_data$NúmerodeArtefactos,
                                        main = "Número de artefactos",
                                        col = "pink")

#5
cross_artyac=table(archaeology_data$NúmerodeArtefactos,archaeology_data$Yacimiento)
barplot(cross_artyac)
View(cross_artyac)

#6
ggplot(archaeology_data, aes(x = Longitud, y = Latitud)) +
  geom_density_2d_filled() +
  labs(title = "Mapa de Calor de Densidad",
       x = x,
       y = y)

ggplot(archaeology_data, aes(x= Longitud, y= Latitud)) + 
  geom_bin2d() +
  labs(title = "Mapa de calor de Densidad",
       x= x,
       y= y)
      
#7
total_num_artefactos <- sum(archaeology_data$NúmerodeArtefactos)

#8
mediana_num_artefactos <- median(archaeology_data$NúmerodeArtefactos)

#9
desviacion_estandar <- sd(archaeology_data$NúmerodeArtefactos)
print(desviacion_estandar)

#10
which.max(cross_artyac)

#11
tabla_resumen <- table(mediana_num_artefactos,media_numero_artefactos, desviacion_estandar)
View(tabla_resumen)

#12
boxplot(archaeology_data$NúmerodeArtefactos~archaeology_data$Yacimiento, archaeology_data = df,
        main = "distribución de los artefactos en los yacimientos",
        ylab = "número artefactos",
        xlab = "yacimiento",
        col= "pink",
        border= "brown")