#include 'protheus.ch'
#include 'parmtype.ch'

user function aula03OperadoresMatematicos()

	Local nNum1 := 10
	Local nNum2 := 20
	
	Alert(nNum1 + nNum2) //Soma
	Alert(nNum2 - nNum1) //Subtra��o
	Alert(nNum1 * nNum2) //Multiplica��o
	Alert(nNum2 / nNum1) //Divis�o
	Alert(nNum2 % nNum1) //Resto da divis�o deve ser igual a zero (modulo)
	
return