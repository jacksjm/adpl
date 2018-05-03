#include 'protheus.ch'
#include 'parmtype.ch'
//Estrutura de repetição (For)
user function aula04()

	Local aNotas := {'7','5','10'} //array de notas 
	Local nContator := 0
	
	for nContador := 1 to len(aNotas)
		alert(alltrim(str(nContador)+' nota: '+aNotas[nContador]))
	next nContador
	
return