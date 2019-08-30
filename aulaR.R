# Crie um novo script, utilizando o menu superior do R ???arquivo/
#   novo script???.
# I Salve o seu script onde desejar, atrav??es do menu superior do R
# ???arquivo/salvar como???. N??ao esque??ca de estar com o script
# selecionado quando for fazer isso.
# I Instale o pacote riskR, e coloque um comando no script para ele ser
# carregado.
# I Acesse o manual da fun??c??ao que computa m??edias, mean.
# I Crie tr??es objetos dando o nome e valor que quiser. Verifique a
# exist??encia deles, e depois os remova.

library("riskR")

a<-221
b<-28
c<-90

objects()


rm(a,b,c)
objects()


# Crie um vetor com os n??umeros 1, 3, 5, 7, 9.
# I Crie uma sequ??encia com os cinco primeiros n??umeros pares a partir
# do 2.
# I Realize as quatro opera??c??oes b??asicas com os dois objetos.
# I Calcule o valor m??edio de ambos os objetos.
# I Calcule novamente o valor m??edio, sem usar a fun??c??ao mean.

x<-c(1,3,5,7,9)

x_med<-mean(x)

a<-2
b<-a*5
y<-seq(a,b,by=2)
y_med<-mean(y)

sum(x)/length(x)
sum(y)/length(y)

x+y
x-y
x*y
x/y

# Crie um vetor contendo os nomes Jo??ao, Roberto, Paula, Maria e
# Carlos.
# I Verifique com um operador l??ogico que Marcelo n??ao faz parte da lista.
# I Verifique que n??ao tem nenhum valor ausente na lista.
# I Escreva um c??odigo que resulte no texto
# "Marcelo n~ao est??a nos nomes".
# I Escreva um c??odigo que adicione o sobrenome da Silva a todos os
# nomes.

vetor_nomes<-c('Jo??o','Roberto','Paula','Maria','Carlos')
logico<-prod('Marcelo'==vetor_nomes )
is.na(vetor_nomes)

if (logico == FALSE){
  "Marcelo n??o est?? na lista"
}

silva<-paste(vetor_nomes,'da Silva')

# Partindo do vetor de nomes j??a criado, crie um novo contendo apenas
# os dois primeiros nomes. Fa??ca isso tanto com indexadores de
# inclus??ao como de exclus??ao.
# I Construa uma sequencia de n??umeros inteiros de 0 at??e 10. A partir
# desta sequ??encia, crie outra contendo apenas os valores menores que
# 2 ou maiores que 5.
# I Verifique que a sequ??encia resultante n??ao ??e formada por textos, e a
# converta em texto.


vetor_n2<- vetor_nomes[1:2]
vetor_n3<- vetor_nomes[-3:-5]

int_seq<-0:10
int_seq2<-int_seq[(int_seq<2)|(int_seq>5)]

which(int_seq>5)

is.character(int_seq2)
as.character(int_seq2)

# Crie duas matrizes 2x2.
# I Crie dois vetores compostos pela primeira linha de cada matriz
# criada.
# I Gere uma nova matriz com estas duas linhas.

vc1<-matrix(1:4,nrow=2)
vc2<-matrix(5:8,nrow=2)

vc1
vc2

nova_matriz<-rbind(vc1[1,],vc2[1,])
nova_matriz

is.matrix(nova_matriz)

# Construa uma matriz 3x2 e uma matriz 2x3.
# I Efetue opera??c??ao de multiplica??c??ao de matrizes.
# I Transponha as matrizes originais e repita as opera??c??oes.
# I Tente inverter a matriz resultante na multiplica??c??ao.
# I Foi poss????vel? Compute seu determinante para explicar a resposta.


M<-matrix(1:6, nrow = 3)
N<-matrix(12:7, nrow = 2)

M
N
M_T<-t(M)
N_T<-t(N)
M%*%N

M_T%*%N_T
diag(M_T%*%N_T)
det(M_T%*%N_T)
solve(M_T%*%N_T)

md<-array(0:119,dim=c(5,3,2,4))

# Crie uma lista contendo os seguintes itens: n??umeros pares de 2 a 20,
# e os nomes dos estados da regi??ao sul.
# I A partir desta lista, crie um vetor com os n??umeros pares maiores que
# 4 e menores que 16, bem como o nome do estado mais ao sul.
# Utilize os indexadores para isto.

Lista<-list(v_num=seq(2,20,by=2)
            ,estados_sul=c('Paran??','Santa Catarina','Rio Grande do Sul'))
Lista

vetor_par<-Lista$v_num[Lista$v_num>4 & Lista$v_num<16]
vetor_estado<-Lista$estados_sul[which(Lista$estados_sul=="Rio Grande do Sul")]

mega_vetor<-c(Lista$v_num[Lista$v_num>4 & Lista$v_num<16]
              ,Lista$estados_sul[length(Lista$estados_sul)])
mega_vetor

# I Crie um vetor contendo os n???umeros de 1 a 10.
# I Crie outro vetor que seja a raiz quadrada dos elementos do primeiro
# vetor.
# I Crie um data frame com essas duas vari???aveis.
# I Vizualize este data frame com o editor.


vetor<-1:10
vetor2<- sqrt(vetor)

join_vetor<-rbind(vetor,vetor2)
df<-as.data.frame(join_vetor)
df
edit(df)

df2<-data.frame(vetor,vetor2)
edit(df2)


# write.csv(df,file='teste.csv')
# 
# teste<-read.csv('teste.csv')
# head(teste)
# a<-as.data.frame(mega_vetor)
# pathwd<-gsub(" ", "", paste(getwd(),'/R'), fixed = TRUE)
# pathwd



setwd("C:/Users/00319063/Documents/")
getwd()


write.table(md,file='teste.txt',sep = ';')
red<-as.data.frame(read.table('teste.txt',sep=';'))

head(red)

a<-seq(1,10)
a
b<-seq(2,20,by=2)
b
c<-seq(3,30,by=3)
c
d<-seq(4,40,by=4)
d
M<-cbind(a,b,c,d)
M
write.table(M,file='teste.txt',sep = '-')
a<-read.table('teste.txt',sep='-')


# Crie um vetor de n´umeros inteiros de 1 at´e 10.
# I Fa¸ca um c´odigo que compute a raiz quadrada se o elemento do
# vetor for menor que 5, e eleve o n´umero ao quadrado de for maior
# ou igual a 5.
# I Atribua os valores obtidos a um novo vetor. Crie uma matriz
# juntando os dois vetores por colunas.

vet<-1:10

vet2<-ifelse(vet<5,sqrt(vet),vet**2)

vet3<-cbind(vet,vet2)
vet3

# I Considere a matriz de pre¸cos ABC em quatro lojas do exerc´icio
# anterior.
# I Compute os pre¸cos m´edios dos tr^es produtos em cada uma das
# quatro lojas.
# I Compute estes mesmos

A <- c(2, 4, 3, 5)
B <- c(1, 2, 6, 7)
C <- c(5, 3, 4, 1)
Precos <- cbind(A, B, C)
Precos

apply(Precos,1,mean)#1 faz a media por linha
apply(Precos,2,mean)#2 faz a media por colunas

# I Considere a matriz de pre¸cos ABC em quatro lojas do exerc´icio
# anterior.
# I Compute os pre¸cos m´edios dos tr^es produtos em cada uma das
# quatro lojas.
# I Compute estes mesmos pre¸cos utilizando a fun¸c~ao for, atribuindo a
# um novo objeto.
lojas<-nrow(Precos)
produtos<-ncol(Precos)

for (i in 1:lojas){
  lj[i]<-mean(Precos[i,])
}

for(j in 1:produtos){
  prdt[j]<-mean(Precos[,j])
}

# I Considere novamente a seguinte matriz:
#   x <- 1:10
# y <- ifelse(x < 5, sqrt(x), x^2)
# m <- cbind(x,y)
# I Crie uma matriz com a mesma dimens~ao da anterior, por´em formada
# apenas por zeros.
# I Fa¸ca um c´odigo que preencha cada c´elula [i,j] desta nova matriz
# pelo desvio padr~ao (sd()) dos n´umeros da matriz original exceto os
# da linha i e coluna j.

x <- 1:20
y <- ifelse(x < 5, sqrt(x), x^2)
m <- cbind(x,y)

m2=matrix(rep(0, 40), ncol = 2)
for(i in 1:nrow(m2)){
  for(j in 1:ncol(m2)){
    m2[i,j] = sd(m[-i,-j])
  }
}
m2

# I Crie uma fun¸c~ao para computar a m´edia de um vetor. Verifique que
# ela funciona.
# I Crie uma fun¸c~ao que compute as ra´izes de uma equa¸c~ao do segundo
# grau aX2 + bX + c = 0. Considere o caso em que ??? < 0, quando
# n~ao existem ra´izes reais, como imposs´ivel (uma mensagem de erro
#                                               customizada seria bem vinda). Verifique que ela funciona.
# I Dicas: A f´ormula de Bhaskara ´e uma fun¸c~ao dos coeficientes de uma
# equa¸c~ao de segundo grau. Use o procedimento com if() para os
# casos poss´iveis de ???.

media_vetor<-function(x){
  if(is.vector((x))){
    return (sum(x)/length(x))
    
  }
  else{
    print('Não é vetor')
  }
  
}

bask<-function(a,b,c){
  delta = b**2 - 4*a*c
  if(delta<0){
    print('Não possui raizes reais')
  }
  if(delta==0){
    x = (-b)/2*a
    return(x)
  }
  if(delta>0){
    x1 = (-b + sqrt(delta))/2*a
    x2 = (-b - sqrt(delta))/2*a
    return(cbind(x1,x2,delta))
  }
  
}

result<-bask(1,8,2)
result
