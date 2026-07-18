#define VALOR_ATE_25       330
#define VALOR_26_A_40      160
#define VALOR_41_A_60      290
#define VALOR_ACIMA_60     523
#define VALOR_USUARIO   93

FUNCTION Main()
    LOCAL nIdade, nUsuarios, nValorPlano, nValorTotal

    INPUT "Digite sua idade: " TO nIdade
    INPUT "Digite o n�mero de usu�rios: " TO nUsuarios

    IF nIdade <= 25
        nValorPlano := VALOR_ATE_25
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorPlano := VALOR_26_A_40
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValorPlano := VALOR_41_A_60
    ELSE
        nValorPlano := VALOR_ACIMA_60
    ENDIF

    nValorTotal := nValorPlano + (nUsuarios * VALOR_USUARIO)

    QOut("== Plano de Sa�de ==")
    QOut("Idade         : " + AllTrim(Str(nIdade)) + " anos")
    QOut("Usuarios  : " + AllTrim(Str(nUsuarios)))
    QOut("Valor base    : R$ " + AllTrim(Str(nValorPlano, 10, 2)))
    QOut("Valor total   : R$ " + AllTrim(Str(nValorTotal, 10, 2)))

RETURN NIL