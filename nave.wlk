import matrix.*

object nave {

    const pasajeros = []

    method cantidadDePasajeros() = pasajeros.size()

    method pasajeroConMayorVitalidad() = pasajeros.max({p=>p.vitalidad()})

    method pasajerosConMenorVitalidad() = pasajeros.min({p=>p.vitalidad()})

    method estaCalibradaLaVitalidad() = self.pasajeroConMayorVitalidad() < self.pasajerosConMenorVitalidad() * 2

    method elElegidoEstaEnlaNave() = pasajeros.any({p=>p.esElElegido()})

    method chocarNave() = pasajeros.forEach({p=>p.saltar()})

    method acelerarNave() = pasajeros.forEach({p=> if (!p.esElElegido()) p.saltar() })
    method acelerarNave2() = pasajeros.filter({p=>!p.esElElegido()}).forEach({p=>p.saltar()})

}