#define PI 3.14159


PROCEDURE Main()

    LOCAL raio, area
    LOCAL cateto1, cateto2, hipotenusa
    LOCAL peso, altura, imc
    LOCAL entrada


    QOUT("=== CALCULOS ===")

    // Área do círculo.
    QOUT("")
    QOUT("Digite o raio do circulo:")
    ACCEPT TO entrada
    raio = VAL(entrada)


    area = PI * (raio ^ 2)

    QOUT("Area do circulo: " + STR(area,10,2))

    // Hipotenusa.

    QOUT("")
    QOUT("Digite o primeiro cateto:")
    ACCEPT TO entrada
    cateto1 = VAL(entrada)

    QOUT("Digite o segundo cateto:")
    ACCEPT TO entrada
    cateto2 = VAL(entrada)

    hipotenusa = SQRT((cateto1 ^ 2) + (cateto2 ^ 2))

    QOUT("Hipotenusa:" + STR(hipotenusa,10,2))


    // IMC.
    QOUT("")
    QOUT("Digite o peso (kg):")
    ACCEPT TO entrada
    peso = VAL(entrada)

    QOUT("Digite a altura (m):")
    ACCEPT TO entrada
    altura = VAL(entrada)

    imc = peso / (altura ^ 2)

    QOUT("IMC: " + STR(imc,10,2))

    QOUT("")
    QOUT("Fim do programa.")

RETURN