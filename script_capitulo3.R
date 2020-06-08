# sequencias (Capitulo 3)

1 : 20
seq(1, 25, 2)
# seq(1, 25, 0.5)

rep(3, 4)
rep(1:4, 5)
produtos <- c("TV", "Refrigerador", "Notebook", "Celular")
rep(produtos, 3, each=2)


# Sequencias usando amostras aleatórias

sample(1:30, 10)

#Amostragem sem reposição
sample(1:30, 10, replace = T)
sample(1:30, 10, replace = F)

cod_produto <- 100:150
cod_produto[3]
cod_produto[3:9]
cod_produto[c(3,10)]
