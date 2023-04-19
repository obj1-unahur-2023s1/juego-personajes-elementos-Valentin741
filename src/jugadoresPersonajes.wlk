import armas.*
import elementos.*

object floki {
	var arma = ballesta
	method armaEquipada() = arma
	method cambiarArma(armaNueva) {arma = armaNueva}
	method encontrar(elemento){
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}
}

object mario {
	var property valorRecolectado = 0
	var property ultimoElementoEncontrado
	method encontrar(elemento) {
		valorRecolectado += elemento.valorQueOtorga()
		elemento.recibirTrabajo()
		ultimoElementoEncontrado = elemento
	}
	method estaFeliz() {
		return(valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10)
	}
}

