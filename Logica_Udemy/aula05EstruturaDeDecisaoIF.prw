#include 'protheus.ch'
#include 'parmtype.ch'

user function aula05EstruturaDeDecisaoIF()

	Local nNum1 := 22
	Local nNum2 := 100
	
	If(nNum1 = nNum2)
		MsgInfo("A variavel nNum1 � igual a nNum2")
	ElseIf(nNum1 > nNum2)
		MsgAlert("A variavel � maior")
	ElseIf(nNum1 != nNum2)
		Alert("A varial nNum � diferente de nNum2")
	Endif	
	
return