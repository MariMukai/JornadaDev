PROCEDURE Main()

    LOCAL cNome
    LOCAL nSalario
    LOCAL lAtivo
    LOCAL dAdmissao
    LOCAL nDepartamento

    cNome = "Marianne Mukai Nishikawa"
    nSalario = 1500.00
    lAtivo = .T.
    dAdmissao = CTOD("10/03/2022")
    nDepartamento = 12

    QOUT("Nome: " + cNome)
    QOUT("Salario: " + STR(nSalario,10,2))
    QOUT("Ativo: " + IF(lAtivo, "Sim", "Nao"))
    QOUT("Data de Admissao: " + DTOC(dAdmissao))
    QOUT("Departamento: " + STR(nDepartamento,3))

RETURN