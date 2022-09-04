import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	const integrantes = [ ]
	
	method caramelos() {
		return integrantes.sum{
			integrante => integrante.caramelos()
		}
	}

	method agregarIntegrantes(_integrantes) {
		_integrantes.forEach{
			integrante => integrantes.add(integrante)
		}
	}
	
	method capacidadSusto() {
		return integrantes.sum{
			integrante => integrante.capacidadSusto()
		}
	}
	
	method lider() {
		return integrantes.max({
			integrante => integrante.capacidadSusto()
		})
	}
	
	method recibirCaramelos(_caramelos) {
		self.lider().recibirCaramelos(_caramelos)
	}
	
	method normaSinRepetidos() {
		
	}
}


object barrio {
	const chicos = [ ]
	
	method chicos(_chicos) {
		_chicos.forEach{
			chico => chicos.add(chico)
		}
	}
	
	method chicosConMasCaramelos(top) {
		return chicos.sortedBy({
			a, b => a.caramelos() > b.caramelos()
		}).take(top)
	}
	
	method algunoMuyAsustador() {
		return chicos.any{
			chico => chico.capacidadSusto() > 42
		}
	}
}
