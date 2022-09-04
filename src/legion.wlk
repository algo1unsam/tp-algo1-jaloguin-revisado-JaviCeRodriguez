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
}

