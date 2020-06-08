# vendas_Jan <- c(12,15,3,5)
meses<-c("Jan","Fev","Mar","Abr")

vendas<-scan()

genero <- c("Masc", "Fem")
vendas[1]
vendas[c(1,3)]
vendas[1:3]

vendas[3] <- 13
vendas[4] <- 15
vendas[2:4] <- c(40, 32, 17)

vendas[-4]
vendas = vendas[-4]

vendas[5:7] <- c(23, 43, 15)

length(vendas)

vendas + 2
vendas * 2
vendas / 2
vendas - 2

vendas ^ 2
vendas ^ 3
log(vendas)

mean(vendas)
max(vendas)
min(vendas)
sqrt(vendas)

sort(vendas)
sort(vendas, decreasing = T)

# para atualizar o vetor você coloca a ele uma atribuição
vendas <- vendas + vendas * 2 


vendedor1 <- c("Nike", "Adidas", "Olympikus")
vendedor2 <- c("Adidas", "Mizuno", "Topper")

union(vendedor1, vendedor2)
intersect(vendedor1, vendedor2)
setdiff(vendedor2, vendedor1)
setdiff(vendedor1, vendedor2)


arroz_marcas <- c("Camil", "Tio João", "Prato Fino")
feijao_marcas <- c("Kicaldo", "Milano", "Urbano")

interaction(arroz_marcas, feijao_marcas)


produtos <- c("TV", "Refrigerador", "Notebook", "Celular")
quantidades <- c(30, 36, 20, 35)

quantidades <= 30
quantidades < 10
quantidades == 20
quantidades != 20
