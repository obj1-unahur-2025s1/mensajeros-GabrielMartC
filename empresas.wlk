import paquete.*

object mensajeria{
    // const mensajeros = #{}
    const mensajeros = []
    const paquetesPendientes = [] 
    const paquetesEnviados = [] 



    method mensajeros() = mensajeros

    method contratarMensajero(unMensajero) = mensajeros.add(unMensajero)

    method despedirMensajero(unMensajero) = mensajeros.remove(unMensajero)

    method despedirATodos() = mensajeros.clear()

    method esGrande() = mensajeros.size() > 2

    // method paquetePuedeSerEntrPorPrimMens(unDestino){
    //     const empleadosLista = mensajeros.asList()
    //     return empleadosLista.first().puedeEntregar(unDestino)
    // }


    method paquetePuedeSerEntrPorPrimMens(){
        return paquete.puedeSerEntregado(mensajeros.first())
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
    method puedeEntregarse(unPaquete){
        return mensajeros.any({mens => unPaquete.puedeSerEntregado(mens)})
    }

    //2
    method losQuePuedenEntregarUnPaquete(unPaquete){ //devuelve sublista
        return mensajeros.filter({mens => unPaquete.puedeSerEntregado(mens)})
    }

    //3
    method tieneSobrepeso(){
        return self.totalPesoDeLosMensajeros() / mensajeros.size() > 500
    }

    //metodo auxiliar
    method totalPesoDeLosMensajeros(){
        return mensajeros.sum({mens => mens.peso()})
    }

    //4
    method enviar(unPaquete){
        if(self.puedeEntregarse(unPaquete)){
            paquetesEnviados.add(unPaquete)
        }
        else{
            paquetesPendientes.add(unPaquete)
        }
    }

    //5
    method facturacion(){
        return paquetesEnviados.sum({paq => paq.precioTotal()})
    }

    //6
    method enviarPaquetes(listaPaquetes){
        paquetesPendientes.forEach({paq => self.enviar(paq)})
    }

    //7
    method enviarPendienteMasCaro(){
        // return self.enviar()
        if(self.puedeEntregarse(self.paquetePendienteMasCaro())){
            self.enviar(self.paquetePendienteMasCaro())
            paquetesPendientes.remove(self.paquetePendienteMasCaro())
        }
    }

    //aux
    method paquetePendienteMasCaro(){
        return paquetesPendientes.max({paq => paq.precioTotal()})
    }

    //resolver 8 y 9


}