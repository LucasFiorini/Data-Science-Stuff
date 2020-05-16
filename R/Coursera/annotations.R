> x <- vector("numeric", length = 10)
> x
  [1] 0 0 0 0 0 0 0 0 0 0
> y <- c(1.7, "a")
  #nesse caso 1.7 é convertido para string
#criando vetor
> x <- 0:6
# convertendo para lógico
# tudo diferente de 0 vai se tornar TRUE
> as.logical(x)

# quando nao é possivel converter, ele colocar NA's no lugar

# Lists
> x <- list(1, "a", TRUE)
> x
   [[1]]
   [1] 1
  
   [[2]]
   [1] "a"

   [[3]]
   [1] TRUE


# Matrices
> m <- matrix(nrow = 2, ncol = 3)
> m
	[,1] [,2] [,3]
[1,] NA   NA   NA
[2,] NA   NA   NA
[3,] NA   NA   NA

> dim(m)
 2 4 (duas linhas e quatro colunas)

# Os elementos de uma matriz sao inseridos por coluna
> m <- matrix(1:6, nrow = 2, ncol = 3)
> m
  1 2 3
  4 5 6

> m <- 1:10
> dim(m) <- c(2,5)
> m
  1 3 5 7 9
  2 4 6 8 10

> x <- 1:3
> y <- 10:12
> cbind(x,y)
  x  y
  1  10
  2  11
  3  12

> rbind(x,y)
  x 1 2 3
  y 10 11 12

#Factors

> f <- factor(c("yes", "yes", "no", "no", "yes"))
> f
 [1] yes yes no no yes
 Levels: no yes

> table(f)
f
no yes
2   3

> f <- factor(c("low", "high", "medium"), levels = c("low", "medium", "high"))

#Missing Values

#verifica se é NA
is.na()
# Verifica se é NAN
is.nan()

> x <- c(1, 2, NaN, NA)
> is.na(x)
 [1] FALSE FALSE TRUE TRUE

> is.nan(x)
 [1] FALSE FALSE TRUE FALSE

# Names
> x <- 1:3
> names(x) <- c("foo", "bar", "norf")
> x
 [1] foo bar norf
	  1   2   3
> m <- matrix(1:4, nrow = 2, ncol = 2)
> dimnames(m) <- list(c("a", "b"), c("c", "d"))
> m

  c d
a 1 2
b 3 4


#Large Datasets
# para economizar tempo de leitura de datasets grandes, seria bom conseguir especificar os tipos
# de dados de cada coluna, para que o R nao tenha que fazer isso sozinho para cada uma. Logo, é possivel
# recuperar os tipos de dados de cada coluna lendo apenas uma parte do dataset e depois, ao ler ele todo,
# espacificar os tipos.

> initial <- read.table('dataset.txt', nrows = 100)
> classes <- sapply(initial, class)
> tabAll <- read.table('dataset.txt', colClasses = classes)

# Calculando  aquantidade de me mória necessaria para guardar dataset na memoria

# dataset com 1500000 linhas e 120 colunas e todos são dados numericos

1500000 x 120 x 8bytes = 1440000000 bytes = 144000000 / 2^20 bytes/MB = 1373,29 MB = 1.34 GB

# Files

> con <- file("foo.txt", "r")
> data <- read.csv(con)
> close(con)

# le 10 linhas de um arquivo de texto
> con <- file("words.txt", "r")
> x <- readLines(con, 10)
> close(con)

# le o html da pagina
> con <- url("www.url-para-um-site", "r")
> x <- readLines(con)

# Subsetting

> x <- c("a", "b", "c")
> x[1]
 [1] "a"
> x[1:3]
 [1] "a" "b" "c"
> x[x > "a"]
[1] "b" "c"
> u <- x > "a"
> u
[1] FALSE TRUE TRUE


> x <- list(a = list(10, 12, 14), b = list(3, 4))
> x[[c(1,3)]]
 14
> x[[1][3]]
 14
> x[[c(2,2)]]
 4

> x <- matrix(1:6, 2, 3)
> x[1,2]
 3

> x[1,]
 1 3 5

> x[1,2, drop = TRUE]
 3
# retorna como um vetor em vez de uma matrix 1x1
# se drop = FALSE, teremos uma matriz como retorno


# Mising Values
# coloca em um vetor logico o que é ou nao NA
# depois entra dentro do vetor filtrando o que nao é
> x <- c(1, 2, NA, 4, NA, 5)
> bad <- is.na(x)
> x[!bad]

# sample tira uma amostra de um ou mais vetores
sample(c(y,z), 100)

# Multiplicacao de matrizes real
# se colocar so o * ele vai multiplicar elemento por elelemento
> x %*% y
