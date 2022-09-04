import elementos.*

object macaria {
	var nivelIra = 10
	var property disfraces = [ ]
	var property caramelos = 0
	
	method capacidadSusto() {
		return nivelIra + disfraces.sum{
			disfraz => disfraz.nivelSusto()
		}
	}
	
	method quitarDisfraz(_disfraz) {
		// sacarse el disfaz (último?)
	}
	
	method disfrazar(disfraz) {
		disfraces.add(disfraz)
	}
	
	method recibirCaramelos(_caramelos) {
		caramelos += (_caramelos * 0.75).div(1)
	}
	
	method dejarDeUsarMenosEfectivo() {
		disfraces.remove(
			disfraces.min(
				{ disfraz => disfraz.nivelSusto() }
			)
		)
	}
}

object pancracio {
	var nivelIra = 4
	var property disfraces = [ mascaraDracula ]
	var property caramelos = 0

	method capacidadSusto() {
		return nivelIra + disfraces.sum{
			disfraz => disfraz.nivelSusto()
		}
	}
	
	method quitarDisfraz(_quitarDisfraz) {
		nivelIra += 2
	}
	
	method disfrazar(_disfraz) {
		disfraces = [ _disfraz ]
	}
	
	method recibirCaramelos(_caramelos) {
		caramelos += _caramelos
	}
	
	method dejarDeUsarMenosEfectivo() {}
}

// El chico inventado .

object pedro {
	var property disfraces = [ ]
	var property caramelos = 0

	method capacidadSusto() {
		return 0
	}
	
	method recibirCaramelos(_caramelos) {}
	
	method disfrazar(disfraz) {
		disfraces.add(disfraz)
	}
	
	method tirarTodosLosDisfraces() {
		disfraces.clear()
	}
}

