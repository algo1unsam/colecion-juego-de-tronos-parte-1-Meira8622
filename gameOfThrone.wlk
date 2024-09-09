object dany {
    const property artefactos = #{}
    var property capacidad = 2 
    var property morada = castillo 
    var property historia = [] 
    
    method agregarAHistoria(item) {
        historia.add(item)
    }

    method encontrar(item) {
        self.agregarAHistoria(item)
        if(self.artefactos().size() < self.capacidad()) {
            self.artefactos().add(item)
        } 
    }

    method volverACasa() {
        morada.llegar(self)
    }

    method posesiones() {
        return self.artefactos()+morada.artefactos()
    }

    method posee(item) = self.artefactos().contains(item) || morada.artefactos().contains(item)

}

object castillo {
    const property artefactos = #{}

    method agregarArtefactos(items) {
        self.artefactos().addAll(items)
    }

    method llegar(personaje) {
        self.agregarArtefactos(personaje.artefactos())
        personaje.artefactos().clear()
    }

}

object espada {
  
}

object libro {
  
}

object collar {
  
}

object armadura {
  
}