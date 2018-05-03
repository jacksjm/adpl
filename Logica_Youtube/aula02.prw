#include 'protheus.ch'
#include 'parmtype.ch'
//Estrutura de decisão (if, elseif, else, endif)
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