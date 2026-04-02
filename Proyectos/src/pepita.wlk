object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }

  method volar(metros) {
    energy = energy - 10 - (metros/10)
  }

  method descansar() {
    energy = energy + 30
  }

  method cansada() {
    return energy < 30
  }
  method comer(alimento) {
    energy = energy + alimento.energiaQueAporta()
  }
}
object alpiste {
  method energiaQueAporta() {
    return (25)
  }
}

object manzana {
  var maduramiento = 0

  method modificarMaduramiento(valor) {
    maduramiento =  valor
    
  }
  method energiaQueAporta(){
    return (20 * self.madurez())
  }

  method madurez() {
        if (maduramiento == 3) {
            return 0
        }
        return maduramiento
    }
}


object pepon {
  var energy = 30

  method energy() = energy

  method comer(alpiste) {
    energy = (energy + alpiste.energiaQueAporta()) / 2
  }

  method comerM(manzana, valor) {
    energy = energy + manzana.energiaQueAportaSegundMadurez(valor) / 2
  }

  method volar(km) {
    energy = energy - 20 - (2*km)
  }

  method cansado() {
    return energy < 34
  }
}

object rebecca {
    var ave = pepita
    var cantidadDeCenas = 0

    method verAve() {
        return ave
    }

    method alimentar(alimento) {
        ave.comer(alimento)
        cantidadDeCenas = cantidadDeCenas + 1
    }

    method cambiarDeAve(nuevaAve) {
        ave = nuevaAve
        cantidadDeCenas = 0
    }

    method cenas() {
        return cantidadDeCenas
    }
}