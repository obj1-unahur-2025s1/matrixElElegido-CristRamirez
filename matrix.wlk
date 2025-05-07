object neo {

    var energia = 100

    method saltar() { energia /= 2 }

    method vitalidad() = energia / 10

    method esElElegido() = true

}

object morfeo {
    
    var vitalidad = 8
    var energia = 100
    var estaCansado = false

    method esElElegido() = false

    method vitalidad() = vitalidad

    method saltar() { 
        energia /= 2
        vitalidad -= 1.max(0)
        estaCansado = !estaCansado
    }
}

object trinity {

    method esElElegido() = false

    method saltar() { }

    method vitalidad() = 0
}