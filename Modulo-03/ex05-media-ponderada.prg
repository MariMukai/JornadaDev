PROCEDURE Main()

    LOCAL n1, n2, n3, n4
    LOCAL nMedia
    LOCAL cValor

    QOUT("== MEDIA PONDERADA ==")

    QOUT("")
    QOUT("Digite a primeira nota:")
    ACCEPT TO cValor
    n1 = VAL(cValor)

    QOUT("Digite a segunda nota:")
    ACCEPT TO cValor
    n2 = VAL(cValor)

    QOUT("Digite a terceira nota:")
    ACCEPT TO cValor
    n3 = VAL(cValor)

    QOUT("Digite a quarta nota:")
    ACCEPT TO cValor
    n4 = VAL(cValor)

    nMedia = (n1 * 1 + n2 * 2 + n3 * 3 + n4 * 4) / 10

    QOUT("")
    QOUT("Media Ponderada: " + STR(nMedia,10,2))

RETURN