##############
# DataFrames #
##############

# Son como matrices pero en este caso podemos tener columnas con datos de distinto tipo. 

# Tenemos al función "data.frame" para crearlos

empty = data.frame() # creamos un dataframe vacío
empty

# Vamos a rellenar el dataframe con vectores
c1 = 1:10
c2 = letters[1:10] # lo que va a hacer es crearnos un vector con 10 letras

df = data.frame(col1 = c1, col2 = c2)


## ANAISIS EXPLORATORIO, vamos a trabajar con un dataset pre-cargado en R

head(mtcars, 5) # para ver las primeras 5 filas del dataframe, por defecto R coge 6 filas
tail(mtcars, 5) # para ver las últimas 5 filas del dataframe
str(mtcars) # es como el dtypes de pandas, nos da los tupos y algunos de los valores que tenemos en las columnas
summary(mtcars) # es como el describe de pandas. Nos hace una pequeña descripción estadística de cada colunma

## MANIPULACIÓN DEL DATAFRAME

# Añadir una fila

mtcars = rbind(mtcars, data.frame(mpg = 22,  cyl = 5, disp = 6, hp = 100, drat = 2.56, wt = 3.9,
                                  qsec = 15, vs = 1, am = 0, gear = 5, carb = 4 )) # lo que estamos haciendo aquí es crear un nuevo dataframe con los valores  queremos y que unamos por filas al dataframe de mtcars. Y sobreescribimos el mtcars 

str(mtcars)

# Añadir columnas. Tenemos varías formas

## La primera forma es usando "rep"
rep(1, 10) # con esto lo que estamos haciendo es repetir 10 veces el número 1
mtcars$newcol = rep(1, nrow(mtcars)) # estamos creando una nueva columna que se llama "newcol" que tiene solo 1, y queremos que se repitan tantas veces como el número de filas que tenemos en nuestro dataframe
summary(mtcars)

## A través de indices
mtcars[, 'new2'] = mtcars$newcol * 2
summary(mtcars)

## Usando cbind
v = mtcars$cyl * 100
mtcars = cbind(mtcars, v)
str(mtcars)


## INDEXACION DATAFRAME, empezamos desde el principio con el dataframe de mtcars. Para eso reseteamos el kernel con la escobita

df  = data.frame(mtcars)
str(df)
df
df[2, 5] # dame el valor de la fila 2 columna 5
df[2,] # dame todos los valores de la fila . Sería como nuestro iloc
df["mpg"] # filtro por columna
df[, c("mpg", "hp")] # nos devuelve las colunmnas de  mpg y hp

## haciendo subsets, tenemos dos formas

df[(df$hp > 150 & df$hp < 200), ] # devuelveme todas las filas donde se cumplas las dos condiciones que te paso
subset(df, hp > 150 & hp < 200)

