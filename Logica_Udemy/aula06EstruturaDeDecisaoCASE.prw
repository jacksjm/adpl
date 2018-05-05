#include 'protheus.ch'
#include 'parmtype.ch'

user function aula06EstruturaDeDecisaoCASE()
	
	Local cData := "25/12/2017"
	
	Do Case
		Case CData == "20/12/2017"
			Alert("Não é Natal " + cData)
		Case CData == "25/12/2017"
			Alert("É Natal " + cData)
		OtherWise
			MsgAlert("Não sei qual dia é hoje! ")
	EndCase
	
return