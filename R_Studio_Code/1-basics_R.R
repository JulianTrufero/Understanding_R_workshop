ls() #list the variables in the workspace

####################
# Basic operations #
####################
1+2+3
1*2*3
c(1,2,3,4,5,6) # función que sirve para concatenar, para crear un vector con todos los elementos que tenemos dentro
1:20 # es como el range del python

###########################
# Operadores relacionales #
##########################

TRUE == TRUE
"hello" == "goodbye"

3 != 4
4 > 5

########################################
# Operadores relacionales con vectores #
########################################

a = c(18, 8, 56, 0, 12, 54, 90)
a > 10 # vamos a ir valor a valor de nuestro objeto a chequeando si la condición es verdadera o falsa

#######################
# Operadores lógicos #
######################

x = 12
x > 5 & x <  15 # tienen que cumplirse las dos condiciones

y = 5
y > 4 | y > 10 # tiene que cumplirse una de las dos condiciones


###################################
# Operadores lógicos para vectores#
###################################

b = c(TRUE, TRUE, FALSE)
d = c(TRUE, FALSE, FALSE)

b & d # nos va a ir comparando cada elemento de nuestros vectores(el primerode b frente al primero de d, el segundo frente al regundo etc.)
b && d # es solo para vectores y nos compara solo el primer elemento, el resto los ignora

b | d
b || d

############################
# Sentencias condicionales #
############################


x = -9
if (x < 3){
  print("Numero negativo")
} else if (x == 0){
  print("el numero es 0")
} else {
  print("numero positivo")
}


#################
# Bucles while #
#################
ctr = 8
while (ctr >= 7) {
  if (ctr == 20)
    break
  print(paste("crt vale", ctr))
  ctr =  ctr + 1
  print(ctr)
}

count = 1
n = 6
fact =  1
while (count < n){
  fact = fact * count
  count = count + 1 
  print(fact)
}


###############
# Bucles for #
##############

cities = c("New York", "Madrid", "Roma", "Paris", "Londres", "Rio de Janeiro")
typeof(cities)

for (city in cities){
  print(city)
  if (city == "Madrid")
    print(paste("LLegamos a", city))
}



# Create a list

my_list <- list(1, 2, "hola", "Ras")
my_list[3]
print(str(my_list)) # resumen de los que tiene una variable

# Vector with numerics from 1 up to 10 (as a python range)
my_vector <- 1:9
my_vector

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(my_vector, ncol = 3)
print(my_matrix)
typeof(my_matrix)





