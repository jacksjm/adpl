#include 'protheus.ch'
#include 'parmtype.ch'
//Manipulando dados com MSExecAuto
user function Banco005()

	Local aArea := GetArea()
	Local aDados := {}
	Private lMSErroAuto := .F.
	//Adicionando dados no vetor para teste de inclus�o na tabela SB1
	aDados := {;
			   {"B1_COD", "111111",                 Nil},;
			   {"B1_DESC", "PRODUTO TESTE",         Nil},;
			   {"B1_TIPO", "GG",                    Nil},;
			   {"B1_UM", "PC",                      Nil},;
			   {"B1_LOCPAD", "01",                  Nil},;
			   {"B1_PICM", 0,                       Nil},;
			   {"B1_IPI", 0,                        Nil},;
			   {"B1_CONTRAT", "N",                  Nil},;
			   {"B1_LOCALIZ", "N",                  Nil};
			   }
	//Inicio do controle de transa��o
	Begin Transaction
		//chama cadastro de produto
	MSExecAuto({|x,y|Mata010(x,y)},aDados,3)
	//Opera��es 3 - inclusa�. 4 - Altera��o. 5 - Exclus�o
	//Caso ocorra algum erro	
		If lMSErroAuto
			Alert("Ocorreram erros duratne a opera��o!")
			MostraErro()
			
			DisarmTransaction()
		Else
			MsgInfo("Opera��o finalizada!", "Aviso")
		EndIf	
	End Transaction		   
	
	RestArea(aArea)
	
return