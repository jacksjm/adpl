#include 'protheus.ch'
#include 'parmtype.ch'
//Manipulando dados com RecLock
user function Banco004()
	
	Local aArea := SB1->(GetArea())
	DbSelectArea('SB1')
	SB1->(DbSetOrder(1))
	SB1->(DbGoTop())
	
	// Iniciar a transação
	Begin Transaction
		
		MsgInfo("A descrição do produto será alterada!", "atenção")
	
		If SB1->(DbSeek(FWXfilial('SB1') + '000002'))
			RecLock('SB1', .F.) //.F. Trava registro para alteração
		    Replace B1_DESC With "MONITOR DELL 42 PL"	
		    SB1->(MsUnLock()) //Destrava a tabela
		EndIF
			MsgAlert("Alteração efetuada!", "Atenção")
			//DisarmTransaction() "Cancela a transação"
	End Transaction
	
	RestArea(aArea)
return