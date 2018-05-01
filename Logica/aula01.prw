#include 'protheus.ch'
#include 'parmtype.ch'
//Fonte Geral: Comandos de seleção ou decisão (if, else, endif)
user function aula01()

	Local cVar := 'achei'
	Local lVar := .T.
	
	if cVar=='achei'
		msgAlert("Texto encontrado")
		msgAlert(lVar)
	else
		msgAlert("Texto não encontrado")
	endif
	
return