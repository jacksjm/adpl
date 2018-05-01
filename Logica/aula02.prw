#include 'protheus.ch'
#include 'parmtype.ch'
//Fonte Geral: Comandos de seleção ou decisão
user function aula02()
	
	Local nVar := 1
	
	if nVar == 1
		msgAlert('igual a 1')
	elseif nVar == 2
		msgAlert('igual a 2')
	else
		msgAlert('alo mundo!')
	endif	
	
return