#include 'protheus.ch'
#include 'parmtype.ch'

user function Banco001()
	Local aArea := SB1->(GetArea()) //Refer�ncia a tabela que queremos acessar no Protheus
		
	DbSelectArea("SB1") //Selecionamos a tabela SB1
	SB1->(DbSetOrder(1)) //Selecionamos o �ndice
	SB1->(DbGoTop()) //Abrindo a tabela
	// dbSeek = Varrer a tabela pelo c�digo 000002
	If SB1->(dbSeek(FWXFilial("SB1")+ "000002"))
		Alert(SB1->B1_DESC)//Alert com a descri��o do produto
	EndIf
	
	RestArea(aArea) //Fecha a tabela
	
return