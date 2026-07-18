FUNCTION Main()
    LOCAL nNumeroDoMes
    LOCAL aMesesDoAno := { "Janeiro", "Fevereiro", "Marco", "Abril", ;
                        "Maio", "Junho", "Julho", "Agosto", ;
                        "Setembro", "Outubro", "Novembro", "Dezembro" }

    INPUT "Digite o n�mero do m�s (1 a 12): " TO nNumeroDoMes

    IF nNumeroDoMes >= 1 .AND. nNumeroDoMes <= 12
        Qout("O m�s correspondente �: " + aMesesDoAno[nNumeroDoMes])
    ELSE
        Qout("N�o foi poss�vel encontrar o m�s")
    ENDIF
RETURN NIL 