#Taller de introduccion en Revit
#Joseph Rodriguez
#20/07/2021

#Ejercicio 1
#Dados los vectores:

x <- c(4,2,6)
y <- c(1,0,-1)

#intente predecir los resultados

length(x)

sum(x)

sum(x^2)

x+y

x*y

x-2

x^2

#Ejercicio 2
#Crear las siguientes matrices

vecx <- c(3,-1,2,1)
vecy <- c(1,0,4,1,0,-1)

matx <- matrix(vecx,2,2)
maty <- matrix(vecy,2,3)

matx

maty

#calcular las operaciones y chequear los resultados

2*matx

matx*matx

matx%*%matx

#Ejercicio 3
#utilizando las matrices anteriores, con x e y, calcule el efecto de las siguientes operaciones

matx[1,]

matx[2,]

matx[,2]

maty[1,2]

maty[,2:3]


#Ejercicio 4
#Usando un poco de matematicas básicas podemos demostrar que:
#La media aritmetica no es más que la suma de todos los elementos dividida por el numero de elementos

media_x <- sum(matx)/length(matx)
media_x

#la varianza se calcula de la siguiente manera:

var_1 <- matx-media_x
var_1
var_x <- sum(var_1^2)/(length(matx)-1)
var_x

#la desviacion estandar es la raiz cuadrada (sqrt()) de la varianza

sd_x <- sqrt(var_x)
sd_x

#Intente calcular la media aritmetica y la dsviacion y compare el resultado 

mean(matx)
media_x

var(matx)
var_x

sd(matx)
sd_x


#Ejercicio 5

data_A <- rep(c(-1, 0, 1), 5)                        # For matrix A
data_B <- rep(c(-3, -2, -1, 0, 1, 2, 3), each = 3)   # For matrix B
data_C <- rep(c(1, 0, 0, 0, 0), length.out = 16)     # For matrix C 

data_A
data_B
data_C

matrix_A <- matrix(data_A,3,5)
matrix_A

matrix_B <- matrix(data_B,7,3, byrow = T)
matrix_B

matrix_C <- matrix(data_C,4,4) 
matrix_C

#Ejercicio 6

miles = c(65311,65624,65908,66499,66821,67145,67447)
miles

x=diff(miles)
x

max_x= max(miles)
max_x

min_x= min(miles)
min_x

mean_x= mean(miles)
mean_x

#Ejercicio 7

x= c(1,8,2,6,3,8,5,5,5,5)
sum(x)
log10(x)
x-4.4
max(x)
min(x)
rango <-max(x)-min(x)
rango

#Ejercicio 8
mtcars[mtcars$cyl = 4, ]
# use `==`              (instead of `=`)
mtcars[mtcars$cyl == 4, ]
mtcars[-1:4, ]
# use `-(1:4)`          (instead of `-1:4`)
mtcars[-(1:4), ]


mtcars[mtcars$cyl <= 5]
# `,` is missing
mtcars[mtcars$cyl <= 5,]

#Ejercicio 9
#mtcars es un dataframe, debe estar con comas


#Ejercicio 10
#crear el dataframe
id<- c("Alex","Lilly","Mark","Oliver","Martha","Lucas","Caroline")
Age <-c(25,31,23,52,76,49,26)
Height <- c(177,163,190,179,163,183,164)
Weight <- c(57,69,83,75,70,83,53)
Sex <- c("F","F","M","M","F","M","F")
Tabla <-data.frame(id,Age,Height,Weight,Sex)

Working <- c("Yes","No","No","Yes","Yes","No","Yes")
cbind(Tabla,Working)

dim(Tabla)

IMC <- Weight/((Height/100)^2)
cbind(Tabla,IMC)
