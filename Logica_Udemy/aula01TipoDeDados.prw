#include 'protheus.ch'
#include 'parmtype.ch'
/**
	TIPO DE DADOS
	
NÚMERICO: 3 / 21.000 / 0.4 /200000
LÓGICO: .T. / .F.
CATACTERE: "D" / 'Nome', 'C'
DATA: DATE()
ARRAY: {"VALOR1","VALOR2","VALOR3"}
BLOCO DE CÓDIGO: {||VALOR := 1, MsgAlert("Valor é igual a "+CValToChar(VALOR))} 
**/
user function aula01TipoDeDados()
	
	Local nNum := 66
	Local lLogic := .T.
	Local cCarac := "String"
	Local dData := DATE()
	Local aArray := {"Joao","Maria","Jose"}
	Local bBloco := {|| nValor :=2, MsgAlert("O numero é: "+ cValToChar(nValor))}
	
	Alert(nNum)
	Alert(lLogic)
	Alert(cValToChar(cCarac))
	Alert(dData)
	Alert(aArray[1])
	Eval(bBloco)//Eval é utilizada para retornar um valor de um blovo de código
	
return 