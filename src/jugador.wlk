import jugadoresPersonajes.*
import elementos.*

object luisa {
	var personajeActivo
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
	method personajeActivo() = personajeActivo
	method asignarPersonaje(personajeNuevo) {personajeActivo = personajeNuevo}
}
