package jugador

import tipo.Tipo

class Jugador {
	
	var String nombre
	var Tipo tipo /*tipo va a tener que ser una interfaz "super clase" de Condicional, Estandar o 
	 		   *Solidario ya que estas ultimas van a tener que entender los mismos mensajes
			   *y van a ser tratadas polimorficamente	
			   */
	var int peso
	var int habilidad
	var int edad
	
	/*Inicializacion */
			   
	new(String nombre){
		this.nombre = nombre //este new crea el jugador con nombre, el "new" solo ya no existe
	}
	/*Getters y Setters */
	def getNombre(){
		this.nombre
	}
	def setNombre(String nombre){
		this.nombre = nombre
	}
	def getTipo{
		this.tipo
	}
	
	def setTipo(Tipo tipo){
		this.tipo = tipo
		tipo.jugador(this)
		
		}
}