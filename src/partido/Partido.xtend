package partido

import jugador.Jugador

class Partido {
	var String fecha //'20/05/14'
	var String lugar
	var String horario //'07:00pm'
	var inscriptos = newArrayList
	
	/*Inicializacion */
	new(){
		super()
		this.inicializarInscriptos
	}
	
	new(String unaFecha, String unLugar, String unHorario){
		
		fecha = unaFecha
		lugar = unLugar
		horario = unHorario
		this.inicializarInscriptos
	}
	
	def void inicializarInscriptos(){
		inscriptos = newArrayList
	}
	
	/*Getters y Setters */
	def getFecha(){
		this.fecha
	}
	def getLugar(){
		this.lugar
	}
	def getHorario(){
		this.horario
	}
	def getinscriptos(){
		this.inscriptos
	}
	
	def void inscribir(Jugador unJugador){
		unJugador.tipo.inscribirseA(this)
		}
											 
	def agregar(Jugador unJugador){
		this.inscriptos.add(unJugador)
		}
	
		def todosSonEstandar(){
			this.inscriptos.filter(jugador|(jugador.tipo) == new Estandar).size == this.inscriptos.size
		}
		
		def plazaLlena() {
			this.inscriptos.size == 10
			}
				
		
	def plazaLlenaAsegurada() {
		((this.todosSonEstandar) && (this.plazaLlena))
		}	
		
	def plazaLlenaNoAsegurada() {
		this.plazaLlena && !(this.todosSonEstandar)
		}
		
		
	def listaDeCondicionales() {
		this.inscriptos.filter(jugador|jugador.tipo == new Condicional) 
		}
		
			
	def listaDeSolidarios(){
		this.inscriptos.filter(jugardor|jugador.tipo == new Solidario)
	}	
	
	
	def quitaUno() {
		if (this.listaDeCondicionales != 0){
			this.inscriptos.remove(listaDeCondicionales.first)
			}else{
				this.inscriptos.remove(listaDeSolidarios.first)
				}
			}
}