#include 'protheus.ch'
#include 'parmtype.ch'
//Utilizando a fun��o FilBrowse, Criando Fun��es e Utilizando a Fun��o BrwLegenda
user function MBRSA2()

	Local cAlias         := "SA2"
	Local aCores         := {}
	Local cFiltra        := "A2_FILIAL == '"+xFilial('SA2')+"' .And. A2_EST == 'SP'"
	Private cCadastro    := "Cadastro MBROWSE"
	Private cRotina      := {} 
	Private aIndexSA2    := {}
	Private bFiltraBrw   := {|| FilBrowse(cAlias,@aIndexSA2,@cFiltra)} //FilBrowse
	
	AADD(aRotina, {"Pesquisar"   ,"AxPesqui"        ,0,1})
	AADD(aRotina, {"Visualizar"  ,"AxVisual"        ,0,2})
	AADD(aRotina, {"Incluir"     ,"U_BInclui"       ,0,3})
	AADD(aRotina, {"Alterar"     ,"U_BAltera"       ,0,4})
	AADD(aRotina, {"Excluir"     ,"U_BDeleta"       ,0,5})  
	
	//aCores - Legenda
	
	AADD(aCores,{"A2_TIPO == 'F'","BR_VERDE" })
	AADD(aCores,{"A2_TIPO == 'J'","BR_AMARELO" })
	AADD(aCores,{"A2_TIPO == 'X'","BR_LARANJA" })
	AADD(aCores,{"A2_TIPO == 'R'","BR_MARROM" })
	AADD(aCores,{"Empty(A2_TIPO)","BR_PRETO" })
	
	dbSelectArea(cAlias)
	dbSetOrder(1)
	
	Eval(bFiltraBrw)
	
	dbGoTop()
	mBrowse(6,1,22,27,cAlias,,,,,,aCores)
	
	EndFilBrw(cAlias,aIndexSA2)
	
return
/*----------------------------------------------------------------
	FUN��O BInclui - Inclus�o
------------------------------------------------------------------*/
user function BInclui(cAlias, nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxInclui(cAlias,nReg,nOpc)
		If nOpcao == 1
			MsgInfo("Inclus�o efetuada com sucesso!")
		Else
			MsgAlett("Inclus�o cancelada!")
		EndIf
return	
/*----------------------------------------------------------------
	FUN��O BAltera - Altera��o
------------------------------------------------------------------*/
user function BAltera(cAlias, nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxAltera(cAlias,nReg,nOpc)
		If nOpcao == 1
			MsgInfo("Altera��o efetuada com sucesso!")
		Else
			MsgAlett("Altera��o cancelada!")
		EndIf
return Nil	
/*----------------------------------------------------------------
	FUN��O BDeleta - Exclus�o
------------------------------------------------------------------*/
user function BDeleta(cAlias, nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxDeleta(cAlias,nReg,nOpc)
		If nOpcao == 1
			MsgInfo("Exclus�o cancelada!")
		Else
			MsgAlett("Exclus�o efetuadad com suscesso!")
		EndIf
return Nil	
/*----------------------------------------------------------------
	FUN��O BDeleta - Exclus�o
------------------------------------------------------------------*/
user function BLegenda()
	Local aLegenda := {}
	
	AADD(aLegenda,{"BR_VERDE" ,  "Pessoa F�sica"})
	AADD(aLegenda,{"BR_AMARELO" ,"Pessoa Jur�dica" })
	AADD(aLegenda,{"BR_LARANJA" ,"Exporta��o"})
	AADD(aLegenda,{"BR_MARROM"  ,"Fornecedor Rural"})
	AADD(aLegenda,{"BR_PRETO"   ,"N�o Classificado"})
	
	BrwLegenda(cCadastro, "Legenda", aLegenda)
	
return
	
	
	
	