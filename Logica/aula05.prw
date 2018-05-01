#include 'protheus.ch'
#include 'parmtype.ch'
//Estrutura de repetição (while)
user function aula05()

	Local lLogic := .T.
	Local nVar := 0
	Local cVar := 'Numeros '
	
	do while lLogic 
		cVar += alltrim(str(nVar))
		nVar++
		if nVar <= 10
			cVar += ', '
		endif
		
		if nVar > 10
			lLogic := .F.
		endif
	enddo
	
	alert(cVar)
return