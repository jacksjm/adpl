#include 'protheus.ch'
#include 'parmtype.ch'

user function A010OK()

	Local lExecuta := .T.
	Local cTipo := AllTrim(M->BI_TIPO)
	Local cConta := AllTrim(M->B1_CONTA)
	
	If (cTipo == "PA" .AND. cConta == "001")
		Alert("Aconta <b> "+ cConta + "</b> não pode estar "+ ;
		"associada um produto do tipo <b>" + cTipo)
		lExecuta := .F.
	EndIF 
	
return(lExecuta)