#include 'protheus.ch'
#include 'parmtype.ch'

user function aula09UtilizandoArrays()
	Local dData := Date()
	Local aValores := {"Jo�o",dData,100}
	
	Alert(aValores[2]) //Exibe a posicao do array
	Alert(aValores[3])
return