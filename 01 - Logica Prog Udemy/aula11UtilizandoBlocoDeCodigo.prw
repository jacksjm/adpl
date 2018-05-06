#include 'protheus.ch'
#include 'parmtype.ch'
/**
Bloco de códigos é uma função "inline", onde podem ser declarados
parâmetros de entrada, e dentro dele podemos colocar uma ou mais
expressões ADVPL separadas por vírgula, como por exemplo atribuição
de valores em variáveis e chamadas de funções ou métodos
**/
user function aula11UtilizandoBlocoDeCodigo()

	//Local bBloco := {|| Alert("Olá mundo")}
	//Eval(bBloco)
	//Passagem por parâmetros - Bloco de códigos
	Local bBloco := {|cMsg| Alert(cMsg)}
	Eval(bBloco,"Olá Mundo!")
return