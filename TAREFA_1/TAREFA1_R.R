# -- Crie um codigo que:
# -- Seja capaz de elaborar um banco de dados com nomes, idades,profissao, estado civil e renda.
# -- Seja capaz de calcular os valores medios de idade e renda.
# -- Seja capaz de filtrar dentre os dados, apenas as informacoes de indivıduos com determinado estado civil 
#    ou renda a partir de certo valor.

# CARREGA OS DADOS EM UM DF
carrega_csv <- function(nome_arq) {
  
  #CARREGA ARQUIVO DA PASTA DE TRABALHO VIGENTE
  path_data<-gsub(" ", "", paste(getwd(),'/',nome_arq,'.csv'), fixed = TRUE)
  data_externo <- read.csv(path_data)
  return(data_externo)
}

#ESCREVE ARQUIVO CSV A PARTIR DE UM DATA FRAME
escreve_csv<-function(dados_novos,nome_arq) {
  
  #ESCREVE ARQUIVO DA PASTA DE TRABALHO VIGENTE
  path_data<-gsub(" ", "", paste(getwd(),'/',nome_arq,'.csv'), fixed = TRUE)
  write.csv(dados_novos,path_data)
}

#EXCLUI TODAS AS LINHAS MANTENDO A ESTRUTURA
limpa_df<-function(){
  df <- df[0,]
  return(df)
  
}

#INSERE LINHAS
novo_dado<-function(df,de){
  if (nrow(df)==0){
    return(de)
  }
  else{
    df <- rbind(df,de, stringsAsFactors=FALSE)}
  return(df)
}

#FILTRA CONFORME CONDIÇÃO PASSADA
filtro <- function(dados,condition) {
  ind<-which(condition)
  return(dados[ind,])
  
}

#CALCULA MÉDIAS DE IDADE E RENDA
medias <- function(dados) {
  cat('Idade média: ',colMeans(dados['IDADE']))
  cat('\nRenda média: ',colMeans(dados['RENDA']))
}

#********************************************************#

#CARREGA ARQUIVO DADOS.csv
df<-carrega_csv("DADOS")

#CALCULA MÉDIAS
summary(df)
medias(df)

#ESCREVRE ARQUIVOS CSV CONFORME FILTROS
escreve_csv(filtro(df,df$IDADE<27&df$EST_CIVIL=='Single'),'idade_menor_27_solteiro')
escreve_csv(filtro(df,df$IDADE<27&df$EST_CIVIL=='Married'),'idade_menor_27_casado')

#CARREGA NOVO DATA FRAME CONFORME FILTROS
df2<-novo_dado(carrega_csv('idade_menor_27_solteiro'),carrega_csv('idade_menor_27_casado'))

#CALCULA NOVAS MÉDIAS
summary(df2)
medias(df2)

#df<-limpa_df()

#TESTE FUNCAO novo_dado COM ENTRADA MANUAL
df<- novo_dado(df,data.frame(  P_NOME = c('PRIMEIRO NOME')
                              ,U_NOME = c('ULTIMO NOME')
                              ,IDADE = c(as.integer(runif(1, 18, 30)))
                              ,PROFISSAO = c('PROFISSAO')
                              ,RENDA = c(as.integer(runif(1, 2000, 9000)))
                              ,EST_CIVIL=c('Single'))
              )