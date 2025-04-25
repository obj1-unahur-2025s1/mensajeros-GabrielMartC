import mensajeros.*
import destinos.*
object paquete{
    var estaPago = null

    method estaPago() = estaPago

    method estaPago(estado){
        estaPago = estado //boolean
    }

    method puedeSerEntregado(mensajero, destino){
        // return destino.puedeSerEntregado(mensajero, destino)

        //otra sol
        return mensajero.puedeEntregar(destino) && self.estaPago()
    }

}