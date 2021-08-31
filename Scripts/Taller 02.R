#Taller 02
#Joseph Rodriguez
#julio 2021

#ejercicio 01
library(plyr)
edades <- c(40,45,78,78,48,51,54,34,59,59,46,41,60,57,34,50,50,28,50,73,46,26,29,29,27,31,76,78,73,32)
edades

grupo <- 0
for(g in 1:length(edades)){
  
  edad <- edades [g]
  
  grupo[g] <-
  
  if(edad >= 50){
    "Grupo 1"
  }else if(edad >= 41){
    "Grupo 2"
  }else if(edad >= 31){
    "Grupo 3"
  }else if(edad < 31){
    "Grupo 4"
  }
  
}
grupo

#Ejercicio 02

# Variable initialization
n <- 0
square <- 0
# While loop
while(square <= 4000) {
  n <- n + 1
  square <- n ^ 2
}
# Results
n        # 64
square   # 4096
#la funcion utilizó valores de 0 a n, hasta hallar un valor cuyo cuadrado
#sea mayor a 4000, alli se detiene el script, el valor hallado funcion de 64,
# osea se hizo el ejercicio 64 veces

#Ejercicio 03
#crear una funcion para calcular el cv de un vector

