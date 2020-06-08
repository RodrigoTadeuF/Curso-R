# Arrays

#array(elementos, dim(l, c, m), nomdim)
A <- matrix(1:20, 4, 5)
array(A, dim=c(4, 5, 2))
array(A, dim=c(4, 5)) # retirando a informação da quantidade de matrizes ele se
                      # torna uma matriz

array(0, dim=c(3, 4, 2))

array(c("TV", "Geladeira", "Hack"), dim=c(3,2,3))

# -----------------------------------------------------------------
# Criação de Arrays utilizando vetores
vendas <- c(12, 24, 30)
produtos <- c("TV", "Geladeira", "Cama")

array(c(produtos, vendas), dim=c(3,2,2))
vendas_totais <- array(c(produtos, vendas), dim=c(3,2,2))

nomes_variaveis <- c("Produtos", "Quantidades")
nomes_matrizes <- c("Janeiro", "Fevereiro", "Março")
nomes_linhas <- c("Marcos", "João", "Maria")
vendas_totais <- array(c(produtos, vendas), dim=c(3,2,3), dimnames = list(nomes_linhas, nomes_variaveis, nomes_matrizes))

#------------------------------------------------------------------
# Acessando os elementos do Array

vendas_totais
dim(vendas_totais)

# vendas_totais[linha, coluna, matriz]
vendas_totais[, , 1]  # vendas Janeiro
vendas_totais[, , 2]  # vendas Fevereiro
vendas_totais[, , 3]  # vendas Março

vendas_totais[, 1, ] # Produtos vendidos em cada mês (coluna 1)
vendas_totais[, 2, ] # Quantidades de cada mês (coluna 2)

vendas_totais[1, , ] # vendas de Marcos (linha 1)
vendas_totais[2, , ] # vendas de João (linha 2)
vendas_totais[3, , ] # vendas de Maria (linha 3)

# ---------------------------------------------------------------------
# Combinação de dimensões

vendas_totais[, 2, 1] # vendas de Janeiro apenas as quantidades
vendas_totais[1, , 1]
vendas_totais[1, 2, 1] 

# ---------------------------------------------------------------------
# Modificando elementos do Array

vendas_totais[1, 2, 1] <- 14
vendas_totais[2 , , 2] <- c("Freezer", 10) 
vendas_totais[2:3, 2, 3] <- c(34, 80) 

vendas_totais[c(1,3), 2, 3] <- c(20,40)


# ---------------------------------------------------------------------
# Operações
sum(as.numeric(vendas_totais[,2,])) # soma de unidades vendidas(soma das segundas colunas) 

max(as.numeric(vendas_totais[,2,1]))


# ---------------------------------------------------------------------
# Dicas 
vendas_sem1 <- c(12,10,8)
vendas_sem2 <- vendas_sem1 * 2
vendas_sem3 <- vendas_sem1 * 3
vendas_sem4 <- vendas_sem3 + 15

array(c(vendas_sem1, vendas_sem2, vendas_sem3, vendas_sem4), dim=c(3,4,3))

nome_variaveis <- c("Semana 1", "Semana 2", "Semana 3", "Semana 4")
nome_linhas <- c("Marcos", "João", "Ana")
nome_matrizes <- c("Janeiro", "Fevereiro", "Março")

venda_total <- array(c(vendas_sem1, vendas_sem2, vendas_sem3, vendas_sem4), dim=c(3,4,3), 
                     dimnames=list(nome_linhas, nome_variaveis, nome_matrizes))

apply(venda_total, 2, sum)  # Somando colunas entre matrizes
apply(venda_total, 1, sum)  # Somando linhas entre matrizes
