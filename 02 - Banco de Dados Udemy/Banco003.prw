#include 'protheus.ch'
#include 'parmtype.ch'
#include 'TopConn.ch'
//Consultas SQL com ADVPL
user function Banco003()

	Local aArea   := SB1->( GetArea() )
	Local cNewAls := GetNextAlias()
	Local aDados  := []

	BeginSQL Alias cNewAls
		SELECT
			SB1.B1_COD AS CODIGO,
			SB1.B1_DESC AS DESCRICAO
		FROM
			%table:SB1% SB1
		WHERE
			SB1.B1_MSBLQL != '1' AND
			SB1.%notDel%
	EndSQL

	While ! ( cNewAls )->( EoF() )
		AADD( aDados, ( cNewAls )->CODIGO )
		AADD( aDados, ( cNewAls )->DESCRICAO )
		( cNewAls )->( Dbskip() )
	EndDO

	Alert( Len( aDados ) )

	For nCount := 1 To Len( aDados )
		MsgInfo( aDados[ nCount ] )
	Next nCount

	( cNewAls )->( DbCloseArea() )
	RestArea( aArea )

return