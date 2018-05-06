#include 'protheus.ch'
#include 'parmtype.ch'
/**
	TIPO DE DADOS
	
N�MERICO: 3 / 21.000 / 0.4 /200000
L�GICO: .T. / .F.
CATACTERE: "D" / 'Nome', 'C'
DATA: DATE()
ARRAY: {"VALOR1","VALOR2","VALOR3"}
BLOCO DE C�DIGO: {||VALOR := 1, MsgAlert("Valor � igual a "+CValToChar(VALOR))} 
**/
user function aula01TipoDeDados()
	
	Local nNum := 66
	Local lLogic := .T.
	Local cCarac := "String"
	Local dData := DATE()
	Local aArray := {"Joao","Maria","Jose"}
	Local bBloco := {|| nValor :=2, MsgAlert("O numero �: "+ cValToChar(nValor))}
	
	Alert(nNum)
	Alert(lLogic)
	Alert(cValToChar(cCarac))
	Alert(dData)
	Alert(aArray[1])
	Eval(bBloco)//Eval � utilizada para retornar um valor de um blovo de c�digo
	
return 