#include 'protheus.ch'
#include 'parmtype.ch'

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