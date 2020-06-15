# Data Frames

# Criação de Dataframes

## Opção 1
fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)

## Opção 2
resumo_df<-as.data.frame(resumo)

data.frame(fornecedores=c("A","B","E","D","X"),
           quant_Jan=c(320,230,100,340,10),
           quant_Fev=c(220,630,60,50,60),
           quant_Mar=c(520,430,100,34,10))

## Opção 3
dados<-data.frame(V1=fornecedores,V2=quant_Jan,V3=quant_Fev)

# Pesquisa de elementos nos Dataframe

resumo_df[2,] #acessando uma linha específica

resumo_df[2:4,]

resumo_df[c(1,5),]

resumo_df$quant_Jan

resumo_df[,2]

resumo_df[,c(1,4)]

resumo_df$fornecedores[3]
resumo_df[3,1]

#  Modificando o DataFrame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
str(resumo)  #tipos corretos das variáveis


#Pela outra forma....
resumo_1<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo_1<-as.data.frame(resumo_1)
str(resumo_1)  #...tudo é convertido para fator.


resumo_1$quant_Fev + 10  #Não é possível porque está como categórica
#para corrigir esta conversão automática
resumo_1$quant_Jan <- as.numeric(as.character(resumo_1$quant_Jan))
resumo_1$quant_Fev <- as.numeric(as.character(resumo_1$quant_Fev))
resumo_1$quant_Mar <- as.numeric(as.character(resumo_1$quant_Mar))

str(resumo_1)

#  Modificando o DataFrame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
str(resumo)  #tipos corretos das variáveis

resumo$quant_Jan[5]<-100

resumo$quant_Fev[2:4]<-c(640,75,60)

resumo$quant_Mar[c(1,4)]<-c(130,400)

resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")

# Adicionar variáveis ao Dataframe

resumo$quant_Abril <- c(230,250,140,320,110)

# Remover variáveis do Dataframe

resumo <- resumo[,-5]

# Adicionando e removendo casos

resumo[6,] <-c("Friboi",0,0,55)

resumo <- resumo[-6,]

resumo[6,] <-resumo[-(c(1,4)),]

# Operações para Dataframes
ncol(resumo)
nrow(resumo)
dim(resumo)
dim(resumo)[1] #linhas
dim(resumo)[2] #colunas

length(resumo$quant_Jan)
names(resumo)

View(resumo)

summary(resumo)
str(resumo)

resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)
str(resumo)

summary(resumo)

mean(resumo$quant_Jan)
median(resumo$quant_Jan)
sd(resumo$quant_Jan)