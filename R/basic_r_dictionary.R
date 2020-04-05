#faz o merge de duas matrizes
cbind(matriz1, matriz2)
# faz merge de duas matrizes por linha

rbind(matriz1, matriz2)

# soma todos os valores das colunas de uma matriz
colSums(<nome da matriz>)
#linhas 1 a t da coluna 2
matiz[1:3, 2]

#linha 1 das colunas 3 a 5
matriz[1, 3:5]

#todos elementos da primeira coluna
matriz[, 1]

#todos elementos da primeira linha
matriz[1,]

#multipicacao de matrizes
matriz1 %*% matriz2

#fator ordinal
temperature_vector <- c("alto", "baixo", "Medio")
variavel <- factor(temperature_vector, order = TRUE, levels = c("baixo", "medio", "alto"))

#mostra quantidade de elementos e de features
str(dataframe)

#cria o dataframe com vetores passados
data.frame(vetores)

#seleciona todos os elementos da linha 1 a 5 da coluna diameter
planets_df[1:5,"diameter"]

#comandos queivalentes
planets[,3]
planets[, "feature name"]
planets$feature_name

#Coloca ordem em um vetor
positions <- order(vetor)
vetor[positions]

#filtra os campos com condição
subset(planets_df, subset = diameter < 1)

# Adapt list() call to give the components names
#coloca nome nos componentes adicionaos na lista
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")

#lapply sempre retorna uma lista
#para transformar ela em um vetor:
unlist(lapply(list, class))

#mostra quantidade de elementos e de features
str(dataframe)

#cria o dataframe com vetores passados
data.frame(vetores)

#seleciona todos os elementos da linha 1 a 5 da coluna diameter
planets_df[1:5,"diameter"]

#comandos queivalentes
planets[,3]
planets[, "feature name"]
planets$feature_name

#Coloca ordem em um vetor
positions <- order(vetor)
vetor[positions]

#filtra os campos com condição
subset(planets_df, subset = diameter < 1)

# Adapt list() call to give the components names
#coloca nome nos componentes adicionaos na lista
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")

#concatena coisas no print
print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)

# Create a function pow_two()
pow_two <- function(x) {
  x ^ 2
}

# Anonymous function with same implementation
function(x) { 3 * x }

# Generic select function
select_el <- function(x, index) {
  x[index]
}

# Use lapply() twice on split_low: names and years
names <- lapply(split_low, select_el, index = 1)

#comparetwo vectors or lists
identical(freezing_l, freezing_s)


#Concatena objetos
cat("The average temperature is", mean(x), "\n")

#sapply aplica uma função em cima de uma lista ou vetor
#tenta simplificar a saida para um vetor
#já o lapply faz o mesmo so que retornando uma lista

#aplicafuncao em cima de uma lista de vetores e retorna uma variável lógica
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))

#gerauma sequencia. primeiro argumento dia o inicio e o segundo o final.
#o terceiro argumento é o quanto vai incrementar o decrementar ate chegar no limite especificado
seq(8, 2, by= -2) 

#verificao tipo
is.list(c(1,2,3,4)) =====> FALSE

#Convertendo strings para datas

# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2, format = "%Y-%m-%d")
date3 <- as.Date(str3, format = "%d/%B/%Y")

#convertendo data para string
# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")