object bicicleta{
    method peso() = 5
}

object camion{
    var cantAcoplados = 0

    method peso() = cantAcoplados * 500 //500 = media tonelada

    method agregarAcoplados(acoplados){
        cantAcoplados = cantAcoplados + acoplados
    }
}