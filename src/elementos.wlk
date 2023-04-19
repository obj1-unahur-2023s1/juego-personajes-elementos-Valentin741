import armas.*
import jugadoresPersonajes.*

object castillo {
	var defensa = 150
	
	method altura() = 20
	method nivelDeDefensa() = defensa
	method recibirAtaque(potencia) {
		defensa = 0.max(defensa - potencia)
	}
	method recibirTrabajo(){
		defensa = 200.min(defensa + 20)
	}
	method valorQueOtorga() = defensa / 5
}

object aurora {
	var estaViva = true
	method altura() = 1
	method recibirAtaque(potencia) {
		estaViva = !(potencia >= 10) 
	}
	method recibirTrabajo(){}
	method valorQueOtorga() = 15
	method estaViva() = estaViva
}

object tipa {
	var altura =  8
	method altura() = altura
	method recibirAtaque(potencia) {}
	method recibirTrabajo() {
		altura ++
	}
	method valorQueOtorga() = altura * 2
}