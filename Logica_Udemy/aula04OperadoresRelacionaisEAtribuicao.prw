#include 'protheus.ch'
#include 'parmtype.ch'

user function aula04OperadoresRelacionaisEAtribuicao()
	Local nNum1 := 10
	Local nNum2 := 20
	//Operadores relacionais
	Alert(nNum1 < nNum2) //Comparação menor
	Alert(nNum1 > nNum2) //Comparacão maior
	Alert(nNum1 = nNum2) //Comparação de igualdade
	Alert(nNum1 == nNum2) //Comparação de igualdade para caracteres
	Alert(nNum1 <= nNum2) //Menor ou igual
	Alert(nNum1 >= nNum2) //Maior ou igual
	Alert(nNum1 != nNum2) //Diferença
	
	//Operadores de atribuição
	nNum1 := 10 //Atribuição simples
	nNum1 += nNum2 // nNum1 = nNum1 + nNum2
	nNum2 -= nNum1 // nNum2 = nNum2 - nNum1
	nNum1 *= nNum2 // nNum1 = nNum1 * nNum2
	nNum2 /= nNum1 // nNum2 = nNum2 / nNum1
	nNum2 %= nNum1 // nNum2 = nNum2 / nNum1
	
return