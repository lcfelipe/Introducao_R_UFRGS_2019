calcula_vpl<-function(inv,fc,i){#Funcao para calcular o VPL
  n=length(fc)
  n_taxa = length(i)
  vpl=0
  
  for(i_taxa in 1:n_taxa){#loop externo para taxas
    
    vpl[i_taxa] =0
    for (t in 1:n){#loop interno com fluxos
      vpl[i_taxa]<- vpl[i_taxa] + fc[t]/(1+i[i_taxa])**t
    }
    vpl[i_taxa]<-vpl[i_taxa]-inv
  }
  
  return(vpl)
}

fluxos<-c(50,60,70,200)
taxas<-seq(0.01,0.5,by=0.01)

vpl<-calcula_vpl(200,fluxos,taxas)
#plot relação entre VPL e taxas de desconto
plot(taxas,vpl,xlab='Taxas de Desconto',ylab='VPL',main='Gráfico VPL',col = ifelse(vpl < 0,'red','green'), pch = 19)
abline(h = 0)
