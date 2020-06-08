# Fatores

genero <- c("2","2", "1", "1", "2", "3")
genero_ft <- as.factor(genero)
str(genero)
str(genero_ft)

a <- factor(c("2","2", "1", "1", "2", "3"))
str(a)

# ------------------------------------------------------------------
# Pesquisa
genero_ft[3]
genero_ft[2]

genero_ft[2:4]

genero_ft[length(genero_ft)]

genero_ft[2] <- 3
# ------------------------------------------------------------------
# Operações

genero_ft
produtos_online <- factor(c("Produto A", "Produto A", "Produto A", "Produto B", "Produto C", "Produto B"))
produtos_pres <- factor(c("Produto C", "Produto C", "Produto D", "Produto A", "Produto A"))

install.packages("forcats")
library(forcats)

vendas <- fct_c(produtos_online, produtos_pres)

genero_ft <- factor(c(1, 2, 2, 2, 2, 3, 1, 1)) 
plot(genero_ft)

a <- lvls_revalue(genero_ft, c("Masculino", "Feminino", "Outros"))
plot(a)

levels(genero_ft) <- c("Masculino", "Feminino", "Outros")
plot(genero_ft)


genero_ft <- factor(c(1, 1, 3, 2, 3, 1, 1, 2, 3))
plot(genero_ft)

b <- fct_recode(genero_ft, Maculino = "1", Feminino = "2", Outros = "3")
plot(b)

# ------------------------------------------------------------------
# Agrupamento de Grupos

como_soube <- factor(c("Internet", "INTERNET", "net", "Google", "Pesquisa na Web", "amigo", "amiga", "uma pessoa"))

c <- fct_collapse(como_soube, Internet=c("Internet", "INTERNET", "net", "Google", "Pesquisa na Web"), 
             Amigo=c("amigo", "amiga", "uma pessoa"))
plot(c)

estado_civil <- factor(c("solteiro", "solteiro","solteiro",  "viuvo", "divorciado", "solteiro",  "viuvo", "casado", "casado", "casado", "união estável"))
plot(estado_civil)

d <- fct_lump(estado_civil, 2, other_level = "Outros")
plot(d)

e <- fct_lump(estado_civil, 3, other_level = "Outros")
plot(e)

# ------------------------------------------------------------------
# Reordenação dos níveis de fator

escolaridade = factor(c("Superior", "Fundamental", "Fundamental",
                        "Pós-graduado", "Ensino_Médio"))
plot(escolaridade)

f <- fct_relevel(escolaridade, c("Fundamental", "Ensino_Médio", "Superior", "Pós-graduado"))
plot(f)

# Tipos de ordenação (Critérios para ordenação dos níveis de fator)
# Ordem alfabética
# Ordem Racional
# Ordenar por uma variável externa

faturamento <- c(30, 24, 12, 40, 20, 30, 44, 53)
escolaridade <- factor(c("Fundamental", "Superior", "Mestrado", "Doutorado",
                         "Doutorado", "Fundamental", "Mestrado", "Doutorado"))

fct_reorder(escolaridade, faturamento, mean)
fct_reorder(escolaridade, faturamento, sum)
