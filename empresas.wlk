import paquete.*

object mensajeria{
    // const mensajeros = #{}
    const mensajeros = []
    const paquetesPendientes = [] 
    const paquetesEnviados = [] 

    method paquetesEnviados() = paquetesEnviados //para test


    method mensajeros() = mensajeros

    method contratarMensajero(unMensajero) = mensajeros.add(unMensajero)

    method despedirMensajero(unMensajero) = mensajeros.remove(unMensajero)

    method despedirATodos() = mensajeros.clear()

    method esGrande() = mensajeros.size() > 2

    // method paquetePuedeSerEntrPorPrimMens(unDestino){
    //     const empleadosLista = mensajeros.asList()
    //     return empleadosLista.first().puedeEntregar(unDestino)
    // }


    method paquetePuedeSerEntrPorPrimMens(unPaquete){
        return unPaquete.puedeSerEntregado(mensajeros.first())
    }

    // method pesoUltMens(){
    //     const empleadosLista = mensajeros.asList()
    //     return empleadosLista.last().peso()
    // } 

    method pesoUltMens(){
        return mensajeros.last().peso()
    } 

    // parte 3
    //1
    method paquetePuedeSerEntregado(unPaquete){
        return mensajeros.any({mens => unPaquete.puedeSerEntregado(mens)})
    }

    method mensajerosQuePuedenLlevarPaquete(unPaquete){
        //retorna sublista
        return mensajeros.filter({mens => unPaquete.puedeSerEntregado(mens)})
    }

    method tieneSobrepeso(){
        return self.promedioPesoTotalMens() > 500
    }

    method promedioPesoTotalMens() { //ret int
        return mensajeros.sum({mens => mens.peso()}) / mensajeros.size()
    }

    method enviarPaquete(unPaquete){
        if(self.paquetePuedeSerEntregado(unPaquete)){
            paquetesEnviados.add(unPaquete)
        }
        else{
            paquetesPendientes.add(unPaquete)
        }
    }

    method facturacionTotal(){
        return paquetesEnviados.sum({paq => paq.precioTotal()})
    }

    method enviarMuchosPaquetes(paquetes){
        paquetes.forEach({paq => self.enviarPaquete(paq)})
    }

    method enviarPaqueteMasCaro(){
        if(self.paquetePuedeSerEntregado(self.paquetePendMasCaro())){
            self.enviarPaquete(self.paquetePendMasCaro())
            paquetesPendientes.remove(self.paquetePendMasCaro())
        }
    }

    method paquetePendMasCaro(){
        return paquetesPendientes.max({paq => paq.precioTotal()})
    }



}