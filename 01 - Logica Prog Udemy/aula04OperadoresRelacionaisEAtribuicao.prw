#include 'protheus.ch'
#include 'parmtype.ch'

user function aula04OperadoresRelacionaisEAtribuicao()
	Local nNum1 := 10
	Local nNum2 := 20
	//Operadores relacionais
	Alert(nNum1 < nNum2) //Compara��o menor
	Alert(nNum1 > nNum2) //Comparac�o maior
	Alert(nNum1 = nNum2) //Compara��o de igualdade
	Alert(nNum1 == nNum2) //Compara��o de igualdade para caracteres
	Alert(nNum1 <= nNum2) //Menor ou igual
	Alert(nNum1 >= nNum2) //Maior ou igual
	Alert(nNum1 != nNum2) //Diferen�a
	
	//Operadores de atribui��o
	nNum1 := 10 //Atribui��o simples
	nNum1 += nNum2 // nNum1 = nNum1 + nNum2
	nNum2 -= nNum1 // nNum2 = nNum2 - nNum1
	nNum1 *= nNum2 // nNum1 = nNum1 * nNum2
	nNum2 /= nNum1 // nNum2 = nNum2 / nNum1
	nNum2 %= nNum1 // nNum2 = nNum2 / nNum1
	
return