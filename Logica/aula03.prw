#include 'protheus.ch'
#include 'parmtype.ch'

user function aula03()

	local nOpcao := 1
	do case
		case nOpcao == 0
			alert("Op��o 0 selecionada")
		case nOpcao == 1
			alert("Op��o 1 selecionada")
		case nOpcao == 2
			alert("Op��o 2 selecionada")
	endcase
	
return