import vehiculos.*
import destinos.*

object roberto{
    var vehiculoActual = bicicleta

    method peso() = 90 + vehiculoActual.peso()

    method fondos() = 0

    method cambiarVehiculo(nuevoVehi){
        vehiculoActual = nuevoVehi
    }

    method puedeLlamar() = false

    // method puedeEntregarADestino_(destino){
    //     return destino.mensajero_CumpleRequisitos()
    // } 

    method puedeEntregar(unDestino){
        return unDestino.mensajeroCumpleCondiciones(self.peso(), self.puedeLlamar())
    }
}

object chuckNorris{
    method peso() = 80

    // method fondos() = 0

    method puedeLlamar() = true

    method puedeEntregar(unDestino){
        return unDestino.mensajeroCumpleCondiciones(self.peso(), self.puedeLlamar())
    }

}

object neo{
    method peso() = 0

    // method fondos() = 0

    method celularNeo() = celular 

    method puedeLlamar() = self.celularNeo().tieneCredito()

    method puedeEntregar(unDestino){
        return unDestino.mensajeroCumpleCondiciones(self.peso(), self.puedeLlamar())
    }

}

object celular{
    var credito = 0

    method tieneCredito() = credito > 0

    method recargarCredito(incrCredito){
        credito = credito + incrCredito
    }
}