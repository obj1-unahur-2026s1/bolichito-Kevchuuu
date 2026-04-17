import objetos.*
import colores.*
import materiales.*
import personas.*

object bolichito {
    var cosaEnMostrador = remera 
    var cosaEnVidriera = pelota

    method elBolichitoEsBrillante(){
        return cosaEnMostrador.material().esBrillante() == cosaEnVidriera.material().esBrillante()
    }

    method esMonocromatico(){
        return cosaEnMostrador.color() == cosaEnVidriera.color()
    }

    method elBolichitoEstaEquilibrado(){
        return cosaEnMostrador.peso() > cosaEnVidriera.peso()
    }

    method hayObjetoDeUnColorYSePuedeMejorar(){
        return not self.elBolichitoEstaEquilibrado() and self.esMonocromatico()
    }

    method puedeOfrecerAlgoAUnaPersona(unaPersona){
        return unaPersona.leGustaCosaEnElMostrador() or unaPersona.leGustaCosaEnLaVidriera()
    }

    method leGustaCosaEnElMostrador(){
        return cosaEnMostrador.leGusta()
    }

    method leGustaCosaEnLaVidriera(){
        return cosaEnVidriera.leGusta()
    }

    method cambiarPosicionUnaCosa(){
        cosaEnMostrador = cosaEnVidriera
    }

    method cambiarPosicionOtraCosa(){
        cosaEnVidriera = cosaEnMostrador  
    }
}