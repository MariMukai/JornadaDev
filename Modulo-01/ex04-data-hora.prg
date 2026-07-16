REQUEST HB_LANG_PT
FUNCTION Main()
   LOCAL cNome:= "Marianne Mukai Nishikawa"
   LOCAL cCidade:= "Mogi das Cruzes"
   LOCAL cCurso:= "Harbuor/ADVPL"

   hb_cdpSelect( "PT850" )
   hb_langSelect( "PT" )

   QOut("================================")
   QOut("      FICHA DE APRESENTA€ÇO")
   QOut("================================")

   QOut("Nome    : "+ cNome)
   QOut("Cidade  : "+ cCidade)
   QOut("Curso   : "+ cCurso)
   QOut("Data    : " + DToC(Date()))
   QOut("Hora    : " + Time())

   QOut("================================")

RETURN NIL