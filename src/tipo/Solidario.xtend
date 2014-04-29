package tipo

import jugador.Jugador
import partido.Partido

class Solidario {
	
	var Jugador jugador
	
	def inscribirseA(Partido partido) {
		if ((!(partido.plazaLlenaAsegurada)) || partido.estaLlenoNoAsegurado){
			partido.quitaUno
			partido.inscribir(this.jugador)
			
			}
		}
}