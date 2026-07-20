FUNCTION Main()
    LOCAL nSecreto
    LOCAL nPalpite
    LOCAL nTentativa
    LOCAL lAcertou

    nSecreto := HB_RandomInt(1, 100)
    lAcertou := .F.

    Qout("Adivinhe o n�mero entre 1 e 100. Voce tem 7 chances!.")

    FOR nTentativa := 1 TO 7
        nPalpite := -1
        WHILE nPalpite < 1 .OR. nPalpite > 100
            INPUT "Tentativa " + NTOC(nTentativa) + "/7 - Seu palpite: " TO nPalpite
            IF nPalpite < 1 .OR. nPalpite > 100
                Qout("Palpite inv�lido. Digite um valor entre 1 e 100!.")
            ENDIF
        ENDDO

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT

        ELSEIF nPalpite < nSecreto
            Qout("O n�mero secreto e maior.")
        ELSE
            Qout("O n�mero secreto e menor.")
        ENDIF

    NEXT

    Qout("")
    IF lAcertou
        Qout("Parab�ns! Voce acertou em " + NTOC(nTentativa) + " tentativa(s).")
    ELSE
        Qout("Esgotaram suas tentativas :(")
    ENDIF
    Qout("O n�mero secreto era: " + NTOC(nSecreto))
RETURN NIL