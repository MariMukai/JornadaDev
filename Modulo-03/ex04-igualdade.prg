PROCEDURE Main()

    LOCAL cTexto1
    LOCAL cTexto2

    cTexto1 = "teste1"
    cTexto2 = "teste2"

    QOUT("Comparando com =")

    IF cTexto1 = cTexto2
        QOUT("Resultado: Iguais")
    ELSE
        QOUT("Resultado: Diferentes")
    ENDIF

    QOUT("")

    QOUT("Comparando com ==")

    IF cTexto1 == cTexto2
        QOUT("Resultado: Iguais")
    ELSE
        QOUT("Resultado: Diferentes")
    ENDIF

RETURN