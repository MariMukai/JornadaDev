FUNCTION Main()
    LOCAL nA, nB, cOperacao, nResultado

    Qout("Calculadora com DO CASE")

    INPUT "Digite o primeiro n�mero: " TO nA
    ACCEPT "Digite a opera��o (+, -, *, /, ^, R): " TO cOperacao

    IF cOperacao != "R"
        INPUT("Digite o segundo n�mero: ") TO nB
    ENDIF

    DO CASE
        CASE cOperacao == "+"
            nResultado = nA + nB
            Qout("Resultado: " + AllTrim(STR(nResultado, 10, 2)))
        CASE cOperacao == "-"
            nResultado = nA - nB
            Qout("Resultado: " + AllTrim(STR(nResultado, 10, 2)))
        CASE cOperacao == "*"
            nResultado = nA * nB
            Qout("Resultado: " + AllTrim(STR(nResultado, 10, 2)))
        CASE cOperacao == "/"
            IF nB == 0
                Qout("Erro: Divis�o por zero n�o � permitida.")
            ELSE
                nResultado = nA / nB
                Qout("Resultado: " + AllTrim(STR(nResultado, 10, 2)))
            ENDIF
        CASE cOperacao == "^"
            nResultado = nA ^ nB
            Qout("Resultado: " + AllTrim(STR(nResultado, 10, 2)))
        CASE cOperacao == "R"
            IF nA < 0
                Qout("Erro: Raiz quadrada de n�mero negativo n�o realizada")
            ELSE
                nResultado = Sqrt(nA)
                Qout("Resultado: " + AllTrim(STR(nResultado, 10, 2)))
            ENDIF
        OTHERWISE
            Qout("Erro: Opera��o inv�lida.")
    ENDCASE
RETURN NIL