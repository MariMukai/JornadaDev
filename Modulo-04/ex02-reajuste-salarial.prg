FUNCTION Main()
    LOCAL cSalario
    LOCAL nSalario, nReajuste, nNovoSalario

    ACCEPT "Digite o salario atual: " TO cSalario
    nSalario := VAL(cSalario)

    IF nSalario < 1000
        nReajuste := 0.15
    ELSEIF nSalario >= 1000 .AND. nSalario <= 2000
        nReajuste := 0.12
    ELSEIF nSalario > 2000 .AND. nSalario <= 4000
        nReajuste := 0.08
    ELSE
        nReajuste := 0.05
    ENDIF

    nNovoSalario := nSalario + (nSalario * nReajuste)
    Qout("Sal�rio atual do funcion�rio: R$ " + AllTrim(STR(nSalario, 10, 2)))
    Qout("O Novo sal�rio ap�s o reajuste �: R$ " + AllTrim(STR(nNovoSalario, 10, 2)))
RETURN NIL