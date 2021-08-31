#Taller 03
#Joseph Rodriguez
#agosto 2021

#Ejercicio 01: siga los pasos:
#cargar libreria MASS

#install.packages("MASS")
library(MASS)
fgl
summary(fgl)
head(fgl)
#Ejercicio 01: Genere un gráfico de concentracion de Oxido de magnesio
#vs indice de Refraccion (RI)
library(ggplot2)
library(dplyr)

gplot <- ggplot(fgl,aes(x=Mg, y=RI))+
  geom_point(aes(colour=(type)))+
  ggtitle("Analisis de Refraccion")+
  xlab("Concentracion Mg")+
  ylab("Indice de refraccion")+
  theme_bw()
                 
  
gplot
ggsave("Resultados/Refraccion.png", gplot, height = 4, width = 5)

?ggplot
#Ejercicio 02: leer el archivo eventos_de _platano.csv
#leerd csv
platano <- read.csv("Datos/eventos_de_platano.csv", row.names = 1)
#configurar tipo de columna a la fecha
as.Date(platano$FECHA_SIEMBRA,"%m/%d/%Y")

head(platano)

#calcular el rdto
platano <-platano %>% mutate(RDTO = as.numeric(platano$PN_ANIO/platano$AREA_UM))
platano
summary(platano)

#Graficos de variables
boxplot(platano$RDTO~platano$DIST_SURCOS, xlab="Distancia de surcos(m)",
        ylab="Rendimiento (Kg/ha)", col="cyan", main="Rendimiento por distancia entre surcos")


boxplot(platano$RDTO~platano$DIST_PLANTAS, xlab="Distancia entre plantas(m)",
        ylab="Rendimiento (Kg/ha)", col="red", main="Rendimiento por distancia entre plantas")


boxplot(platano$RDTO~platano$DIBUJO_SIEMBRA, xlab="Dibujo de siembra",
        ylab="Rendimiento (Kg/ha)", col="green", main="Rendimiento por dibujo de siembra")

boxplot(platano$RDTO~platano$ANALISIS_QUIMICO, xlab="Presencia de analisis Quimico",
        ylab="Rendimiento (Kg/ha)", col="blue", main="Rendimiento según el analisis Quimico")

boxplot(platano$RDTO~platano$TIPO_SIEMBRA, xlab="Tipo de siembra",
        ylab="Rendimiento (Kg/ha)", col="orange", main="Rendimiento según el tipo de siembra")


boxplot(platano$RDTO~platano$INVITRO_O_CORMOCOLINO, xlab="Tipo de propagacion",
        ylab="Rendimiento (Kg/ha)", col="grey", main="Rendimiento según el tipo de propagacion")

boxplot(platano$RDTO~platano$PATRON_USADO, xlab="Tipo de patron usado",
        ylab="Rendimiento (Kg/ha)", col="pink", main="Rendimiento según el patron utilizado")

#Grafico edad vs Rdto
plot(platano$RDTO~platano$EDAD, xlab="Edad",
        ylab="Rendimiento (Kg/ha)", main="Rendimiento según la edad")
abline(h=(mean(platano$RDTO)), col="orange")
text(15, 15000, mean(platano$RDTO))

#Grafico de ggplot rdto vs dibujo y patron
ggplot(platano, aes(y=RDTO, x=DIBUJO_SIEMBRA))+geom_boxplot()+
  facet_grid(.~PATRON_USADO)+ ylab("Rendimiento(Kg/ha)")+
  xlab("Dibujo de siembra")+
  ggtitle("Rendimiento por dibujo de siembra segun patron usado")+
  theme_bw()

#Grafico de ggplot rdto vs distancia y patron
  ggplot(platano, aes(y=RDTO, x=DIST_PLANTAS))+geom_smooth()+
    facet_grid(.~DIBUJO_SIEMBRA)+ ylab("Rendimiento(Kg/ha)")+
    xlab("Distancia de plantas")+
    ggtitle("Rendimiento por distancia de plantas segun patron usado")+
  theme_bw()
  
  #3.0 graficos ggplot del paquete de datos diamonds
  diamonds
  summary(diamonds)
  
#grafico 1
ggplot(diamonds, aes(x=cut, y=depth)) + geom_boxplot()+
  theme_bw()

#Grafico 2
ggplot(diamonds, aes(x=table, y=depth)) + 
  geom_point(aes(color=cut))+
  theme_bw()

#grafico 3
ggplot(diamonds, aes(x=depth))+
  geom_bar()+
  facet_grid(.~color)+
  theme_bw()

#4.0 Utilizar base de datos platano
platano

#realizar grafico de violin
#install.packages("hrbrthemes")
library(hrbrthemes)
ggplot(data=platano, aes(x=PATRON_USADO, y =RDTO, fill=PATRON_USADO))+
  geom_violin()+
  theme_ipsum_rc()


#realizar grafico de densidad multiple
ggplot(data=platano, aes(x=RDTO, group=PATRON_USADO ,fill=PATRON_USADO))+
  geom_density(adjust=1.5, alpha=0.5)+
  theme_ipsum()







