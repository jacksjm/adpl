#include 'protheus.ch'
#include 'parmtype.ch'
//Procedimentos e Fun��es
user function aula06()
	
	Local nOpcao := 5 //Sele��o dos menus
	Private cVarAux := 'Vazio'
	
	do case
		case nOpcao == 0
			U_APVInicio() //Procedimento
		case nOpcao == 1
			cVarAux := U_APVRetorno(nOpcao) //Fun��o
		case ((nOpcao == 2).or.(nOpcao == 3))
			cVarAux := U_APVTimeOut(nOpcao) //Fun��o
	endcase
	
	alert(cVarAux)
	
return cVarAux

//Metodo um ----------------------------------------------------
user function APVInicio()
cVarAux := 'Preenchido'
return

//Metodo dois --------------------------------------------------
user function APVRetorno(nOpcao)
Local cNewVar
if nOpcao == 1
	cNewVar := 'Preenchido um'
endif
return cNewVar

//Metodo tres -------------------------------------------------
user function APVTimeOut(nOpcao)
Local cNewVar
if nOpcao == 2
	cNewVar := 'Preenchido dois'
elseif nOpcao == 3
	cNewVar := 'Preenchido tres'
endif
return cNewVar



