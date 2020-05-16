#gera uma sequencia de numeros
> seq(1, 20)

# por default ele aumenta de um em um
# para mudar a forma do incremento basta adicionar o parametro by =
> seq(0, 10, by = 0.5)

# sequancia de 30 numeros de forma crescente, porem entre 5 e 10
> seq(5, 10, length = 30)

# funcao cria um vetor de mesmo tamanho e especificacoes de outro vetor pessado
> seq_along(my_vector)

# Cria vetor com valores repetidos
> rep(0, times = 40)
> rep(c(0, 1, 2), times = 10)

# cria vetor com valore pepetidos n vezes
# vai criar um vetor com 10 0's, 10 1's, etc
> rep(c(0, 1, 2), each = 10)

#Vectors
# concatena vetor de strings adicionando algo no meio
# nesse caso ira juntar tudo e colocar " " entre cada elemento
> paste(vetor, collapse = " ")

# todas as letras do alfabeto
> LETTERS

# Remover valores NA de um vetor
> x[!is.na(x)]

# Pegar todos os valores exceto os especificados
> x[c(-2, -10)]
# ou
> x[-c(2, 10)]

# identifica se dois vetores sao iguais
> identical(vetor1, vetor2)

# Para converter um vetor para uma matriz
> dim(vetor) <- dim(2,4)

# Coloca nome nas linhas
> cbind(nome_pacientes, matriz)

# Coloca nome nas colunas
colnames(dataframe) <- cnames
