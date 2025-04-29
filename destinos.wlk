object puenteBlooklyn{
    // method mensajeroCumpleCondiciones(pesoMens, puedeLlamarMens){
    //     return pesoMens <= 1000
    // }

    method dejaPasar(unMensajero){
        return unMensajero.peso() <= 1000
    }
}

object matrix{
    // method mensajeroCumpleCondiciones(pesoMens, puedeLlamarMens){
    //     return puedeLlamarMens
    // }

    method dejaPasar(unMensajero){
        return unMensajero.puedeLlamar()
        
    }
}