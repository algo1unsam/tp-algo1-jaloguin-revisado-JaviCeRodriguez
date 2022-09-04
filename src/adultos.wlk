import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	method serAsustadoPor(chico) {
		const caramelos = self.caramelosAEntregar(chico)
		chico.recibirCaramelos(caramelos)
		tolerancia -= 1
	}
	
	method caramelosAEntregar(chico) {
		const diff = tolerancia - chico.capacidadSusto()
		if (diff < 0) return diff.abs()
		return 0
	}
}
