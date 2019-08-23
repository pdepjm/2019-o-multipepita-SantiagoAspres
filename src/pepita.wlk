object pepita {
	var energia = 0

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz() {
		return energia.between(500,1000)
	}
	method cuantoQuiereVolar() {
		var kilometros = energia / 5
		if (energia > 300 && energia < 400){
			kilometros += 10
		}
		if (energia % 20 == 0){
			kilometros += 15
		}
		return kilometros
	}
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	method energia(){
		return energia
	}
	method haceLoQueQuieras(){
		if (self.estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var energia = 0
	method mojarse(){
		energia += 15
	}
	method secarse(){
		energia += 20
	}
	method energiaQueOtorga(){
		return energia
	}
}

object canelones {
	var canelon = 20
	method ponerSalsa (){
		canelon += 5
	}
	method sacarSalsa (){
		canelon -= 5
	}
	method ponerQueso (){
		canelon += 7
	}
	method sacarQueso (){
		canelon -= 7
	}
	method energiaQueOtorga(){
		return canelon
	}
}

//Punto 3

object roque {
	var entrenado
	method elEntrenado(ave) {
		entrenado = ave
	}
	
	method entrena(){
		entrenado.vola(10)
		entrenado.come(alpiste)
		entrenado.vola(5)
		entrenado.haceLoQueQuieras()
	}
}