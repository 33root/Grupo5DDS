package inscripcionesTest

import static org.junit.Assert.*
import org.junit.Test
import partido.Partido
import jugador.Jugador

class Inscripciones {
	
	@Test
		def testSeAnotaJugadorEstandarYDebeXAparecerEnLaListaDeInscriptos() {
				var partido = new Partido
				var jugador = new Jugador("Henry")
				
				partido.inscribir(jugador)
				
				assertFalse(partido.inscriptos.size == 0)	
				
				}						
				
}

		@Test
		def testEnListaCon10EstandarNoDejaNuevosInscriptos() {
			//Escenario
			var partido = new Partido
			var jugador = new Jugador ("Henry")
			partido.inscriptos = newArrayList("Gabriel","Juan","Ramon","PechinioFrio","Lucas","Oscar","Facundo",
										"Gonzalo","Nestor", "Raul")
									  .map(nombre | new Jugador(nombre))
									  .forEach (player | tipo = new Estandar)
									  
									  
			//Accion
			partido.inscribir(jugador)
			
			//Validacion
			assertFalse(partido.inscriptos.includes(jugador))						   
									  							}
			


	@Test
	def testSeInscribenMasDeUnSolidarioEntraElEstandarSalePrimerSolidarioQueEntro(){
	
	//Escenario
	
	var partido = new Partido
	var jugadorAdmitido = new Jugador
	var jugadorSolidario1 = new Jugador
	var jugadorSolidario2 = new Jugador
	
		partido.inscriptos = newArrayList("Gabriel","Juan","Ramon","PechinioFrio","Lucas","Oscar","Facundo",
										"Gonzalo")
									  .map(nombre | new Jugador(nombre))
									  .forEach (player | tipo = new Estandar)
									  // 8 jugadores estandar
	jugadorAdmitido.tipo = new Estandar
	jugadorSolidario1.tipo = new Solidario
	jugadorSolidario2.tipo = new Solidario

	partido.inscribir(jugadorSolidario1)
	partido.inscribir(jugadorSolidario2)
	partido.inscribir(jugadorAdmitido)

	
	assertFalse(partido.inscriptos.includes(jugadorSolidario1)) }
}


def testEnPartidoPlazaLlenaNoAseguradaEntraSolidarioSaleCondicional() {
	//Escenario
	var partido = new Partido
	var jugadorSolidario = new Jugador
	var jugadorCondicional = new Jugador

		partido.inscriptos = newArrayList("Gabriel","Juan","Ramon","PechinioFrio","Lucas","Oscar","Facundo",
										"Gonzalo", "Ivan")
									  .map(nombre | new Jugador(nombre))
									  .forEach (player | tipo = new Estandar)
	//Accion								  
	partido.inscribir(jugadorCondicional)
	partido.inscribir(jugadorSolidario)
	
	//Validacion
	assertFalse(partido.inscriptos.includes(jugadorCondicional))
	}
	
}