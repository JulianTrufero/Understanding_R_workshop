############
# VECTORES # 
############

# Son arrays de una única dimensión

# todos los elementos de un vector son del mismo tipo (no como las listas de Python). Por lo tanto, lo que hará R
## será forzar para que todos los elementos del vector sean del mismo tipo

# creamos vectores usando la función concatenar (c), pero hay mas formas como las funciones"vector", "seq"
hy



# Creación de vectores de longitud fija
v1 = vector(mode = "logical", length = 4)
v1

v2 = vector (mode = "integer", length = 10)
v2

# Usando función "seq"

v3 = 1:5
v3

# Usando la función "concatenación" 
v4 = c(a = 1, b = 2, c = 10)
v4

############################
# Operaciones con vectores #
############################

a_vector = c(1,2,3)
b_vector = c(3,4,5)

suma = a_vector + b_vector
suma

suma_uno = a_vector + 1
suma_uno

sum(a_vector)
max(a_vector)
min(a_vector)
mean(a_vector)

##########################
# Indexación de vectores # 
##########################

# Se usan los corchetes como en Python

v = 1:100

v[10:20]

v[5:10] = 0 # me va a cambiar los valores del 5 al 10 por 0

v[-1] # seleccionamos todos los valores menos el primero

v2 = v[1:4]
v2
names(v2) = c("alfa", "gamma", "delta", "beta")
v2
v2["alfa"]
v2[c("alfa", "beta")]




#############
# MATRICES #
############

# Son arrays de dos dimensiones 

# Elementos del mismo tipo

# Se organizan en filas y columnas

# Usamos la función "matrix" para crear matrices. Neceistamos pasarle: 
## Los datos que queremos meter en la matriz
## el número de columnas
## el número de filas
## el parámetro `byrow` se le pasa un booleano que indica si los datos de la matriz se van a rellenar por las columnas o las filas

m1 = matrix(1:9, byrow = TRUE, nrow = 3)
m1

d1 = diag(3) # crea una matriz diagonal 3 x 3
d1

d2 = diag(c(1,2,4))
d2

t_m1 = t(m1) # transponemos la matriz

# Operaciones con matrices

a_matrix = matrix(1:9, byrow = TRUE, ncol = 3)
b_matrix = matrix(11:19, byrow = TRUE, ncol = 3)

suma_matrix = a_matrix + b_matrix
suma_matrix

rowSums(a_matrix)
colMeans(a_matrix)
max(a_matrix)
min(a_matrix)

# Manipulación de matrices

big_matrix_c = cbind(a_matrix, b_matrix) # aquí lo que estamos haciendo es UNIR POR COLUMAS dos matrices. Pero al igual que en numpy tienen que tener las mismas dimensiones
big_matrix_c

big_matrix_r = rbind(a_matrix, b_matrix) # aquí lo que estamos haciendo es UNIR POR FILAS dos matrices. Pero al igual que en numpy tienen que tener las mismas dimensiones
big_matrix_r

# Indexación de las matrices
m6 = matrix(1:9, byrow = FALSE, nrow = 3)
m6
m6[1,] # nos selecciona la primera fila
m6[1:2,] # selecciamos las dos primeras filas
m6[,1] # nos selecciona la primera columna
m6[,1:2] # seleccionamos las dos primeras columnas


# También podemos indexar basandosnos en vectores lógicos o expresiones booleanas

m_selection = matrix(c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE), byrow = TRUE, nrow = 3)
m6[m_selection] # seleccionamos en función de una matriz de booleanos
m6[m6 > 7]

## le podemos dar nombres a las columnas y las filas de las matrices
colnames(m6) = c("c1", "c2", "c3")
rownames(m6) = c("r1", "r2", "r3")
m6
m6["r1", "c1"]

###########################
# ARRAYS (numpy en python #
###########################

# Matriz de más de dos dimensiones

# Solo puede almacenar variables categóricas (da igual que sean números o strings)

# Usamos la funcion "array" donde le pasamos
## los datos con los que querremos crear el array
## las dimensiones de nuestro array (parámetro dim)

a1 = array(1:9, dim = c(3,3))
a1
a2 = array(1:8, dim = c(2,2,2))
a2

# TRABAJAN USANDO FACTORES

