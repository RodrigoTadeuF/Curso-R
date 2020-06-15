# Funções

# Operadores Lógicos de Igualdade e Desigualdade


# Operadores Lógicos "Comparativos"

> <   >=  <=
  
  # > 
resumo$quant_Jan[2] > 200

resumo$quant_Mar[2] > 500

# <
resumo$quant_Jan[3] < 200
200 < resumo$quant_Jan[3] 

# <=
resumo$quant_Fev[4] <= 90
resumo$quant_Fev[3] <= 40


# >=
resumo$quant_Fev[4] >= 90
resumo$quant_Fev[4] >= 40

resumo

# Igualdade

resumo$quant_Jan[2] == 100
resumo$fornecedores[2] == "Zaeli"

sum(resumo$quant_Jan[2]) == 400
sum(resumo$quant_Jan[2]) == 230  

# Desigualdade

resumo$quant_Jan[2] != 100
resumo$fornecedores[2] != "Zaeli"

sum(resumo$quant_Jan[2]) != 400

#### " e "

(resumo$quant_Mar[3] > 300 ) & (resumo$quant_Mar[3] < 200)
(resumo$quant_Mar[3] < 300 ) & (resumo$quant_Mar[3] < 200)

TRUE & TRUE   = TRUE
FALSE & TRUE   = FALSE

#### "ou"

(resumo$quant_Fev[4]==60) | (resumo$quant_Fev[2]>=650)    
TRUE | TRUE   = TRUE
TRUE | FALSE   = TRUE
FALSE | FALSE  = FALSE

# Loop FOR

i=1  --> comandos
i=2 -->  comandos
i=3 --
  
  for (i in 1:10) {
    comando1
    comando2
    comando3
    ...
    
  }


#  Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo


#novos pedidos

resumo$quant_Abril <-c(200,300,260,150,430)

# objetivo: fazer o usuário revisar seu pedido

for (i in 1:nrow(resumo)) {
  
}
# Loop FOR

i=1  --> comandos
i=2 -->  comandos
i=3 --
  
  for (i in 1:10) {
    comando1
    comando2
    comando3
    ...
    
  }


#  Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo


#novos pedidos

resumo$quant_Abril <-c(200,300,260,150,430)

# objetivo: fazer o usuário revisar seu pedido

for (i in 1:nrow(resumo)) {
  cat("Você pediu",resumo$quant_Abril[i],"unidades ao fornecedor",
      resumo$fornecedores[i],". Pedido Realizado \n")
}

# Loop While

5<=5

i<-1

while (i<=nrow(resumo)) {
  
  cat("Você pediu ",resumo$quant_Abril[i],"ao fornecedor",resumo$fornecedores[i]," Pedido Realizado \n")
  i<-i+1
}

#outro exemplo
k<-0
while (k==0) {
  print("Continuar Pedido: Sim(0) Não(1)")
  k<-scan()
  
}


# Decision Making - IF



# Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo

resumo$quant_Abril<-c(130,300,240,145,225)
resumo$capacidade<-c(460,500,470,390,100)

i<-5
if(resumo$quant_Abril[i]<=resumo$capacidade[i] ){
  print("Pedido Aprovado!")
}

#  Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo

resumo$quant_Abril<-c(130,300,240,145,225)
resumo$capacidade<-c(460,500,470,390,100)

i<-5
if(resumo$quant_Abril[i]<=resumo$capacidade[i] ){
  print("Pedido Aprovado!")
}
else
{ cat("Descupe! A quantidade solicitada SUPERA a capacidade do fornecedor",resumo$fornecedores[i] ,"\n")}


#ou 
if(resumo$quant_Abril[i]<=resumo$capacidade[i] ){
  print("Pedido Aprovado!")
}

if(resumo$quant_Abril[i]>resumo$capacidade[i])
{ cat("Descupe! A quantidade solicitada SUPERA a capacidade do fornecedor",resumo$fornecedores[i] ,"\n")}


# IF, ELSE juntos ao FOR

resumo

for(i in 1:nrow(resumo)){
  
  if(resumo$quant_Abril[i]<=resumo$capacidade[i]){
    print("Pedido Aceito")
  }
  else cat("Atenção! O seu pedido de ",resumo$quant_Abril[i],"supera o limite de",
           resumo$capacidade[i],"do forcedor ",resumo$fornecedores[i],"\n")
  
  
} #fim do for

# Construindo uma função

#### 1 - Cadastre pedidos novos (continuar cadastrando até que o usuário interrompa)
#### 2 - Comparar os pedidos de acordo com o estoque de cada fornecedor
mean(x)

Nome, Preço, capacidade

tabela_f <-resumo[,c(1,6)]
tabela_f$Preço<-c(12,14,23,44,20)


novos_pedidos<-function(nome, tabela_fornecedores){
  
  meus_pedidos<-c()
  k<-0
  
  while (k==0) {
    
    print("----------- NOVO PEDIDO ------------\n")
    cat("Temos ",nrow(tabela_fornecedores),"fornecedores cadastrados. \n")
    
    for(i in 1:nrow(tabela_fornecedores))
    {
      cat("Quantas quantidade você deseja pedir a ",tabela_fornecedores$fornecedores[i],"? \n")
      meus_pedidos[i]<-scan(n=1)  #cadastro dos pedidos
      
      # Se a quantidade for muito baixa (abaixo do limite mínimo = 10% da capacidade)
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i]){
        cat("Pedido Muito baixo. Ele deve ser maior que ",0.1*tabela_fornecedores$capacidade[i],"unidades. \n" )
      }
      
      
      else{
        
        # aprovando ou não o pedido solicitado
        if(meus_pedidos[i]<=tabela_fornecedores$capacidade[i]){
          print("Pedido Enviado com Sucesso!")
        }
        
        
        if(meus_pedidos[i]> tabela_fornecedores$capacidade[i]){
          cat("Pedido ACIMA do estoque máximo. O pedido deve ser no máximo", tabela_fornecedores$capacidade[i],"unidades. \n" )
        }  
        
        
        
      }
      
      
    } #fim do for
    
    print(" ----- Revise seu pedido ------ \n")
    tabela_fornecedores$Pedidos<-meus_pedidos
    print(tabela_fornecedores)
    
    print("---- DIGITE 0 (Continuar pedidos) ---- 1 (Finalizar pedido)")
    k<-scan(n=1)
    
  } #fim do while
  
  return(tabela_fornecedores)
} #fim da função


novos_pedidos(nome="Isaias",tabela_fornecedores = tabela_f)


# Construindo uma função

#### 1 - Cadastre pedidos novos (continuar cadastrando até que o usuário interrompa)
#### 2 - Comparar os pedidos de acordo com o estoque de cada fornecedor
mean(x)

Nome, Preço, capacidade

tabela_f <-resumo[,c(1,6)]
tabela_f$Preço<-c(12,14,23,44,20)


novos_pedidos<-function(nome, tabela_fornecedores){
  
  meus_pedidos<-c()
  k<-0
  
  while (k==0) {
    
    print("----------- NOVO PEDIDO ------------\n")
    cat("Temos ",nrow(tabela_fornecedores),"fornecedores cadastrados. \n")
    
    for(i in 1:nrow(tabela_fornecedores))
    {
      cat("Quantas quantidade você deseja pedir a ",tabela_fornecedores$fornecedores[i],"? \n")
      meus_pedidos[i]<-scan(n=1)  #cadastro dos pedidos
      
      # Se a quantidade for muito baixa (abaixo do limite mínimo = 10% da capacidade)
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i]){
        cat("Pedido Muito baixo. Ele deve ser maior que ",0.1*tabela_fornecedores$capacidade[i],"unidades. \n" )
      }
      
      
      else{
        
        # aprovando ou não o pedido solicitado
        if(meus_pedidos[i]<=tabela_fornecedores$capacidade[i]){
          print("Pedido Enviado com Sucesso!")
        }
        
        
        if(meus_pedidos[i]> tabela_fornecedores$capacidade[i]){
          cat("Pedido ACIMA do estoque máximo. O pedido deve ser no máximo", tabela_fornecedores$capacidade[i],"unidades. \n" )
        }  
        
        
        
      }
      
      
    } #fim do for
    
    print(" ----- Revise seu pedido ------ \n")
    tabela_fornecedores$Pedidos<-meus_pedidos
    print(tabela_fornecedores)
    
    print("---- DIGITE 0 (Continuar pedidos) ---- 1 (Finalizar pedido)")
    k<-scan(n=1)
    
  } #fim do while
  
  return(tabela_fornecedores)
} #fim da função


novos_pedidos(nome="Isaias",tabela_fornecedores = tabela_f)

