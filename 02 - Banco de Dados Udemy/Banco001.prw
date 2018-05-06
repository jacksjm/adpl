#include 'protheus.ch'
#include 'parmtype.ch'

user function Banco001()
	Local aArea := SB1->(GetArea()) //Referência a tabela que queremos acessar no Protheus
		
	DbSelectArea("SB1") //Selecionamos a tabela SB1
	SB1->(DbSetOrder(1)) //Selecionamos o índice
	SB1->(DbGoTop()) //Abrindo a tabela
	// dbSeek = Varrer a tabela pelo código 000002
	If SB1->(dbSeek(FWXFilial("SB1")+ "000002"))
		Alert(SB1->B1_DESC)//Alert com a descrição do produto
	EndIf
	
	RestArea(aArea) //Fecha a tabela
	
return