import colores.*
import materiales.*

object rosa {
  method leGusta(unaCosa){
    return unaCosa.peso() <= 2000
  }
}

object estefania {
  method leGusta(unaCosa){
    return unaCosa.color().esFuerte() 
  }
}

object luisa {
  method leGusta(unaCosa){
    return unaCosa.material().esBrillante()
  }
}

object juan {
  method leGusta(unaCosa) {
    return not self.esColorFuerte(unaCosa) or self.estaEnElPesoAdecuado(unaCosa)
  }

  method esColorFuerte(unaCosa) {
    return unaCosa.color().esFuerte()
  }

  method estaEnElPesoAdecuado(unaCosa) {
    return unaCosa.peso() >= 1200 and unaCosa.peso() <= 1800
  }
}