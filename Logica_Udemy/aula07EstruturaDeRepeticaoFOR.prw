#include 'protheus.ch'
#include 'parmtype.ch'

user function aula07EstruturaDeRepeticaoFOR()
	
	Local nCount
	Local nNum := 0
	//For nCount := 0 To 10 Step 2 Obs: Step 2 incrementa de dois e dois
	For nCount := 0 To 10
		nNum += nCount
	Next
	
	Alert("Valor: "+ cValToChar(nNUm))
	
	
return