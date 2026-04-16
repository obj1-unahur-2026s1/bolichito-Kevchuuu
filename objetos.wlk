import colores.*
import materiales.*

object remera {
  method color() = rojo
  method peso() = 800
  method material() = lino
}

object pelota {
  method color() = pardo
  method peso() = 1300
  method material() = cuero
}

object biblioteca {
  method color() = verde
  method peso() = 8000
  method material() = madera
}

object muñeco {
  var pesoActual = 0

  method color() = celeste
  method peso() = pesoActual
  method material() = vidrio
  method cambiarPeso(pesoNuevo){
    pesoActual = pesoNuevo
  }
}

