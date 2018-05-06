#include 'protheus.ch'
#include 'parmtype.ch'
/**
Bloco de c�digos � uma fun��o "inline", onde podem ser declarados
par�metros de entrada, e dentro dele podemos colocar uma ou mais
express�es ADVPL separadas por v�rgula, como por exemplo atribui��o
de valores em vari�veis e chamadas de fun��es ou m�todos
**/
user function aula11UtilizandoBlocoDeCodigo()

	//Local bBloco := {|| Alert("Ol� mundo")}
	//Eval(bBloco)
	//Passagem por par�metros - Bloco de c�digos
	Local bBloco := {|cMsg| Alert(cMsg)}
	Eval(bBloco,"Ol� Mundo!")
return