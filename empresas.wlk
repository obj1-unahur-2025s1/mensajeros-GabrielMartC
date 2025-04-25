object mensajeria{
    const empleados = #{}

    method contratarMensajero(unMensajero) = empleados.add(unMensajero)

    method despedirMensajero(unMensajero) = empleados.remove(unMensajero)

    method despedirATodos() = empleados.clear()

    method esGrande() = empleados.size() > 2

    // method paquetePuedeSerEntrPorPrimMens(unDestino) = empleados.first().puedeEntregar(unDestino)
    method paquetePuedeSerEntrPorPrimMens(unDestino){
        const empleadosLista = empleados.asList()
        return empleadosLista.first().puedeEntregar(unDestino)

    }


    // method pesoUltMens() = empleados.last().peso()
    method pesoUltMens(){
        const empleadosLista = empleados.asList()
        return empleadosLista.last().peso()
    } 


}