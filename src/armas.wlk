object ballesta {
	var cantDeFlechas = 10
	method potencia() = 4
	method registrarUso() {
		if(self.estaCargada()){
			cantDeFlechas --
		}
	}
	method estaCargada() = cantDeFlechas > 0
}

object jabalina {
	var tieneCarga = true
	method potencia() = 30
	method registrarUso() {
		if(tieneCarga){
			tieneCarga = false
		}
	}
	method estaCargada() = tieneCarga
}