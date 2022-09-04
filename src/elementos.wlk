object trajeDeBruja {
	const property nivelSusto = 10
} 

object barba {
	var longitud = 2
	
	method nivelSusto() {
		return longitud * 5
	}
}

object mascaraDracula {
	const tamanio = 2

	method nivelSusto() {
		return tamanio * 2
	}
}

object mascaraFrankenstein {
	method nivelSusto() {
		return 22
	}
}

object mascaraPolitico {
	const promesas = 5

	method nivelSusto() {
		return promesas * 2
	}
}

