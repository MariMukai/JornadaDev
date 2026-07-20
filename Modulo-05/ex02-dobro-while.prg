FUNCTION Main()
    LOCAL nValor

    Qout("Informe valores inteiros! Digite um valor igual a 0 ou negativo para encerrar.")

    INPUT "Valor: " TO nValor
    WHILE nValor > 0
        Qout("Dobro: " + NTOC(nValor * 2))
        INPUT "Valor: " TO nValor
    ENDDO

    Qout("Programa encerrado!.")
RETURN NIL