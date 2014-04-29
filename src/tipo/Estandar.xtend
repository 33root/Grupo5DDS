package tipo

import jugador.Jugador
import partido.Partido

class Estandar {
	
	var Jugador jugador
		
	def setJugador(Jugador jugador){
		this.jugador= jugador
	}
	
	def inscribirseA(Partido partido) {
		if (!(partido.plazaLlenaAsegurada)){
			partido.agregar(this.jugador)
		}
		

	}
}