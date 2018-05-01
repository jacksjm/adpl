#include 'protheus.ch'
#include 'parmtype.ch'
//Comandos para opção de menu (case)
user function aula03()

	local nOpcao := 1
	do case
		case nOpcao == 0
			alert("Opção 0 selecionada")
		case nOpcao == 1
			alert("Opção 1 selecionada")
		case nOpcao == 2
			alert("Opção 2 selecionada")
	endcase
	
return