#include 'protheus.ch'
#include 'parmtype.ch'

user function aula08EstruturaDeRepeticaoWHILE()
	Local nNum1 := 1
	Local cNome := "RCTI"
	
	While nNum1 != 10 .AND. cNome != "PROTHEUS"
		nNum1++
			If nNum1 == 5
				cNome := "PROTHEUS"
			EndIf
	EndDo
		Alert("Numero: "+ CValToChar(nNum1))
		Alert("Nome: "+ CValToChar(cNome))
return