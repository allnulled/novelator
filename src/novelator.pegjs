Language = ___*
  sentencia:Sentencia_completa* ___*
    { return sentencia }

Sentencia_completa = 
  sentencia:Sentencia (__)*
    { return sentencia }

Sentencia =
  Cambio_de_escena /
  Cambio_de_fondo /
  Cambio_de_capitulo /
  Sentencia_de_dialogo /
  Sentencia_de_accion

Cambio_de_escena = "Cambio de escena:"
  escena:hasta_final_de_linea
    { return { tipo: "sentencia de cambio de escena", escena } }

Cambio_de_fondo = "Cambio de fondo:"
  fondo:hasta_final_de_linea
    { return { tipo: "sentencia de cambio de fondo", fondo } }

Cambio_de_capitulo = "Cambio de capítulo:"
  capitulo:hasta_final_de_linea
    { return { tipo: "sentencia de cambio de capítulo", capitulo } }

Sentencia_de_dialogo =
  personajes:Nombres _ ("dicen:" / "dice:")
  dicen:(hasta_multiples_lineas/hasta_final_de_linea)
    { return { tipo: "sentencia de diálogo", personajes, dicen } }

Sentencia_de_accion = 
  personajes:Nombres
  hacen:(hasta_multiples_lineas/hasta_final_de_linea)
    { return { tipo: "sentencia de acción", personajes, hacen } }

Nombres = 
  nombre_1:Nombre
  nombres_n:Y_nombres*
    { return [].concat([nombre_1]).concat(nombres_n) }

Y_nombres = _ "y" _
  nombre:Nombre
    { return nombre }
Nombre = ("«"/"<") (!("»"/">").)* ("»"/">") { return text().replace(/^(<|«)/g,"").replace(/(>|»)$/g,"") }

hasta_final_de_linea = ((!__).)* { return text().trim() }

hasta_multiples_lineas = __ ((!(__ __)).)* { return text().trim() }

_ = " " / "\t" {}
__ = "\n" / "\r\n" / "\r" {}
___ = _ / __ {}