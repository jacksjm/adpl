#include 'protheus.ch'
#include 'parmtype.ch'

user function aula03OperadoresMatematicos()

	Local nNum1 := 10
	Local nNum2 := 20
	
	Alert(nNum1 + nNum2) //Soma
	Alert(nNum2 - nNum1) //Subtração
	Alert(nNum1 * nNum2) //Multiplicação
	Alert(nNum2 / nNum1) //Divisão
	Alert(nNum2 % nNum1) //Resto da divisão deve ser igual a zero (modulo)
	
return