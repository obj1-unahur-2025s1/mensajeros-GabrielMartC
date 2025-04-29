import mensajeros.*
import destinos.*
object paquete{
    var estaPago = false
    var destino = matrix

    method precioTotal() = 50


    method estaPago() = estaPago

    method pagarPaquete(){
        estaPago = true //boolean
    }

    method destino(unDestino){
        destino = unDestino
    }

    // method puedeSerEntregado(mensajero, destino){
    //     return mensajero.puedeEntregar(destino) && self.estaPago()

    // }

    method puedeSerEntregado(unMensajero){
        // return mensajero.puedeEntregar(destino) && self.estaPago()
        return destino.dejaPasar(unMensajero) && self.estaPago()

    }

}

object paquetito{
    method precioTotal() = 0 

    method estaPago() = true

    method puedeSerEntregado(unMensajero) = true


}

object pequeton {
    const destinos = []
    var importePagado = 0

    method precioTotal() = 100 * destinos.size()

    method estaPago() = importePagado  >= self.precioTotal()

    method pagar(unImporte) {
        importePagado += unImporte
    }

    method puedeSerEntregado(unMensajero){
        self.estaPago() && self.puedePasarPorDestinos(unMensajero)
    }

    method puedePasarPorDestinos(unMensajero){ //funcion auxiliar
        return destinos.all({d => d.dejaPasar(unMensajero)})
    }

    method agregarDestino(unDestino){
        destinos.add(unDestino)
    }
}