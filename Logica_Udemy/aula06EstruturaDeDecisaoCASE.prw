#include 'protheus.ch'
#include 'parmtype.ch'

user function aula06EstruturaDeDecisaoCASE()
	
	Local cData := "25/12/2017"
	
	Do Case
		Case CData == "20/12/2017"
			Alert("N�o � Natal " + cData)
		Case CData == "25/12/2017"
			Alert("� Natal " + cData)
		OtherWise
			MsgAlert("N�o sei qual dia � hoje! ")
	EndCase
	
return