#include 'protheus.ch'
#include 'parmtype.ch'
//Manipulando dados com RecLock
user function Banco004()
	
	Local aArea := SB1->(GetArea())
	DbSelectArea('SB1')
	SB1->(DbSetOrder(1))
	SB1->(DbGoTop())
	
	// Iniciar a transa��o
	Begin Transaction
		
		MsgInfo("A descri��o do produto ser� alterada!", "aten��o")
	
		If SB1->(DbSeek(FWXfilial('SB1') + '000002'))
			RecLock('SB1', .F.) //.F. Trava registro para altera��o
		    Replace B1_DESC With "MONITOR DELL 42 PL"	
		    SB1->(MsUnLock()) //Destrava a tabela
		EndIF
			MsgAlert("Altera��o efetuada!", "Aten��o")
			//DisarmTransaction() "Cancela a transa��o"
	End Transaction
	
	RestArea(aArea)
return