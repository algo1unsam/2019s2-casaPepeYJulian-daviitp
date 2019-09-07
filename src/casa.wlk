import cosas.* 

object casa {
	const property cosas = []
	const property faltantes = #{tomate,pilas,oregano}
	
	method comprar(algo) {
		cosas.add(algo)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any({cosa=>cosa.esComida()})
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico()
	}
	
	method esDerrochona() {
		return cosas.map({cosa=>cosa.precio()}).sum() > 9000
	}
	
	method compraMasCara() {
		return cosas.max({cosa=>cosa.precio()})
	}
	
	method electrodomesticosComprados() {
		return cosas.map({cosa=>cosa.esElectrodomestico()})
	}
	
	method queFaltaComprar(lista) {
		return lista.difference(cosas.asSet())	
	}
	
	
	
}
