//Golosinas

object bombon {
  const property precio = 5
  var pesoGramos = 15
  const property gusto = "frutilla"
  const property esLibreDeGluten = true

  method pesoGramos() = pesoGramos

  method recibirMordisco() {
    pesoGramos -= (pesoGramos * 0.2) + 1
  }
}

object alfajor {
  const property precio = 12
  var pesoGramos = 300
  const property gusto = "chocolate"
  const property esLibreDeGluten = false

  method pesoGramos() = pesoGramos

  method recibirMordisco() {
    pesoGramos -= (pesoGramos * 0.2)
  }
}

object caramelo {
  const property precio = 1
  var pesoGramos = 5
  const property gusto = "frutilla"
  const property esLibreDeGluten = true

  method pesoGramos() = pesoGramos

  method recibirMordisco() {
    pesoGramos -= 1
  }
}


object chupetin {
  const property precio = 2
  var pesoGramos = 7
  const property gusto = "naranja"
  const property esLibreDeGluten = true

  method pesoGramos() = pesoGramos

  method recibirMordisco() {
    if(pesoGramos >= 2){
        pesoGramos -= (pesoGramos * 0.1)
    }
  }
}


object oblea {
  const property precio = 5
  var pesoGramos = 250
  const property gusto = "vainilla"
  const property esLibreDeGluten = false

  method pesoGramos() = pesoGramos

  method recibirMordisco() {
    if(pesoGramos > 70){
        pesoGramos -= (pesoGramos * 0.5)
    } else{
        pesoGramos -= (pesoGramos * 0.25)
    }
  }
}

object chocolatin {
  var pesoGramos = 0
  var precio = 0
  
  const property gusto = "chocolate"
  const property esLibreDeGluten = false

  method pesoGramos() = pesoGramos
  method precio() = precio

  method pesoInicial(unPeso) {
    pesoGramos = unPeso
    precio = unPeso * 0.5
  }

  method recibirMordisco() {
    pesoGramos = (pesoGramos - 2).max(0)
  }
}

object golosinaBaniada {
  var golosinaBase = bombon
  var banioGramos = 4

  method golosinaBase(unaGolosina) {
    golosinaBase = unaGolosina
    banioGramos = 4
  }

  method precio() = golosinaBase.precio() + 2
  method pesoGramos() = golosinaBase.pesoGramos() + banioGramos
  method gusto() = golosinaBase.gusto()
  method esLibreDeGluten() = golosinaBase.esLibreDeGluten()

  method recibirMordisco() {
    golosinaBase.recibirMordisco()
    banioGramos = (banioGramos - 2).max(0)
  }
}

object pastillaTuttiFrutti {
  var property esLibreDeGluten = false
  var sabores = ["frutilla", "chocolate", "naranja"]
  var posicionSabor = 0

  method pesoGramos() = 5
  method precio() {
    return if(esLibreDeGluten){
        7
    } else{
        10
    }
  }
  method gusto() = sabores.get(posicionSabor)

  method recibirMordisco() {
  if (posicionSabor < 2) {
    posicionSabor += 1
  } else {
    posicionSabor = 0
  }
}
}