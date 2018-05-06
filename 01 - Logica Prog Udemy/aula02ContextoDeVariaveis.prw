#include 'protheus.ch'
#include 'parmtype.ch'
/**
Escopo de variaves
Local = Local nNumero := 20 "Visto em qualquer lugar do c�digo fonte no qual foi declarado"
Static = Static nNumero := 90 "dependem de onde s�o declaradas"
Private = V�sivel em todo o programa
Public = V�sivel em todo o programa em que foi declarada
**/

//Variavel static
Static cStat := ''

user function aula02ContextoDeVariaveis()

	//Variaveis locais
	Local nVar0 := 1
	Local nVar1 := 20
	
	//Variaveis private
	Private cPri := 'private'
	
	//Variaveis public
	Public __cPublic := 'RCTI'
	
	TestEscop(nVar0, @nVar1)
	
return
//------------Fun��o static

static function TestEscop(nValor1, nValor2)

	Local __cPublic := 'Alterei'
	Default nValor1 := 0
	
	//Altetrando conteudo da variavel
	nValor2 := 10
	
	//Mostrar conteudo da variavel private
	Alert("Private: "+ cPri)
	
	//Alerar valor da variavel public
	Alert("Publica: "+ __cPublic)
	
	MsgAlert(nValor2)
	Alert("Variavel Static: "+ cStat)
return

