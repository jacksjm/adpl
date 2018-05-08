#include 'protheus.ch'
#include 'parmtype.ch'
//Criando um programa de atualização de dados
user function Modelo01()
	
	Local cAlias := "SB1"
	Local cTitulo := "Cadastro - AXCadastro"
	Local cVldExc := ".T."
	Local cVldAlt := ".T."
	
	AxCadastro(Alias, cTitulo,cVldExc,cVldAlt)
	
return Nil