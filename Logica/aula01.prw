#include 'protheus.ch'
#include 'parmtype.ch'
//Fonte Geral: Comandos de sele��o ou decis�o (if, else, endif)
user function aula01()

	Local cVar := 'achei'
	Local lVar := .T.
	
	if cVar=='achei'
		msgAlert("Texto encontrado")
		msgAlert(lVar)
	else
		msgAlert("Texto n�o encontrado")
	endif
	
return