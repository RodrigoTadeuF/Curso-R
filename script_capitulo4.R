# Matrizes criação

produtos <- c("TV", "Refrigerador", "Notebook", "Celular")
quantidades <- c(30, 36, 2, 15)

# c (column) r (row)
vendas <- cbind(produtos, quantidades)
vendas2 <- rbind(produtos, quantidades)

matrix(1:20, nrow = 4, ncol = 5)
matrix("Brasil", nrow = 4, ncol = 5)
matrix(0, nrow = 4, ncol = 5)

matrix(1:20, nrow = 4, ncol = 5, byrow = T)
matrix(1:30, nrow = 4, ncol = 5, byrow = T)


# Como acessar elementos
vendas[1, 2]
vendas[1, 1]
vendas[1, ]
vendas[ , 2]


# Modificando Matrizes
vendas_Jan <- vendas
vendas_Fev <- vendas

vendas_Fev[,2] <- as.numeric(vendas[,2]) + 2 
vendas_Fev[1, 1] <- c("Televisor")
vendas_Fev[2:4, 2] <- c(12,100,30)
vendas_Fev[c(1,4), 1] <- c("TV", "Smartphone")

vendas_Fev[,-1]
vendas_Fev[-2,]
vendas_Fev[-1, -2]


carlos <- c(120, 130, 400, 230)
marcos <- c(20, 334, 420, 130)
maria <- c(22, 28, 19, 10)

vendas_Reais <- cbind(carlos, marcos, maria)

dim(vendas_Reais)
nrow(vendas_Reais)
ncol(vendas_Reais)

comissoes <- vendas_Reais*0.10
comissoes / 2
comissoes ^ 2

sqrt(comissoes)
log(comissoes)

sum(comissoes[,1])

mean(comissoes[,1])
mean(vendas_Reais[,1])

sum(comissoes)

Jan <- comissoes * 2
Fev <- comissoes

Jan + Fev
Jan - Fev
Jan*Fev

Jan %*% Fev


# Curiosidades sobre matrizes

A <- matrix(1:50, nrow = 5, ncol = 10)
image(A)

contour(A)
contour(volcano)

persp(A)
persp(volcano)

2 x = 10

solve(2, 10)

3x + 2y = 8
x + y = 2

linha1 <- c(3, 2, 8)
linha2 <- c(1, 1, 2)

A <- rbind(linha1, linha2)
solve(A[, 1:2], A[, 3])

det(A[, -3]) # determinante

t(A) #transposição
