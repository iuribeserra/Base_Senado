import csv  
import pandas as pd  
from pandas_datareader import data, wb
from pandas import Series, DataFrame  
import matplotlib.pyplot as plt
import numpy as np  
from matplotlib.ticker import MaxNLocator


def calculaCorrelacao(arquivo):
	arquivo = arquivo
	with open(arquivo,"rb") as source:
	    reader = csv.reader(source)
            lista = list(reader)
            r = [[0 for x in range(len(lista))] for y in range(len(lista))] 
            for i in range(len(lista)): 
                for j in range(len(lista)):
                    s = 0
                    for k in range(len(lista[0])):
                        # if ((lista[i][k] == '0') or (lista[j][k] == '0')):
                        #     continue
                        if ((lista[i][k] == lista[j][k])):
                            s = s + 1
                    r[i][j] = s
        return r

novaListaCorrelacao = calculaCorrelacao('AntesPolemicas.csv')
df_list_corr = pd.DataFrame(novaListaCorrelacao) 

def montaTabelaCorrelacao(dataframe):
    fh = open("tabela_correlacao.txt","w")

    for i in range(len(dataframe)):
        for j in range(len(dataframe[0])):
            fh.write(str(dataframe[i][j])+"\t")
        fh.write("\n")
    fh.close()

# montaTabelaCorrelacao(df_list_corr)

partidosSenadores = ['DEM','PDT','PMDB','PP','PR','PSB','PSD','PSDB', 'PT', 'PTB']
substPartidosSenadores = [0, 4, 9, 24, 28, 31, 38, 47, 60, 73]

plt.imshow(df_list_corr, cmap='hot', interpolation='none')

plt.colorbar()

plt.axvline(x=0)
plt.axvline(x=4)
plt.axvline(x=9)
plt.axvline(x=24)
plt.axvline(x=28)
plt.axvline(x=31)
plt.axvline(x=38)
plt.axvline(x=47)
plt.axvline(x=60)
plt.axvline(x=73)

plt.axhline(y=0)
plt.axhline(y=4)
plt.axhline(y=9)
plt.axhline(y=24)
plt.axhline(y=28)
plt.axhline(y=31)
plt.axhline(y=38)
plt.axhline(y=47)
plt.axhline(y=60)
plt.axhline(y=73)

plt.xticks(substPartidosSenadores, partidosSenadores, rotation='vertical')
plt.yticks(substPartidosSenadores, partidosSenadores)

# plt.gca().xaxis.set_major_locator(MaxNLocator(prune='lower'))
# plt.gca().yaxis.set_major_locator(MaxNLocator(prune='lower'))

# plt.savefig("testePolemicasPosImpeachment.png")
plt.subplots_adjust(bottom=0.05)
plt.show()
