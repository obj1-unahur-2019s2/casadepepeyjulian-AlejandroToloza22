import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa){
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	method tieneComida() {
		return cosas.any({cosa => cosa.esComida()})
	}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio()>5000 
	}
	method esDerrochona() {
		return cosas.sum({cosa => cosa.precio()}) > 9000
	}
	method compraMasCara() {
		return cosas.max({cosa=>cosa.precio()})
	}
	method electrodomesticosComprados() {
		return cosas.filter({cosa => cosa.esElectrodomestico()}) 
	}
	method malaEpoca() {
		return cosas.all({cosa => cosa.esComida()})
	}
	method queFaltaComprar(lista) {
		     //lista.filter({cosa => not cosas.contains(cosa)})
		return lista.asSet().difference(cosas.asSet()).asList()
	}
	method faltaComida() {
		return cosas.count({cosa => cosa.esComida()})<2
	}
	method gastoEnComida() {
		return cosas.filter({cosa=>cosa.esComida()}).sum({cosa=>cosa.precio()})
	}
	method hayElectrodomesticosBaratos() {
		return cosas.any({cosa=>cosa.precio()<3000})
	}
	method preciosDeElectrodomesticos() {
		return cosas.filter({cosa=>cosa.esElectrodomestico()}).map({cosa=>cosa.precio()})
	}
	method nivelEnAumento() {
		return cosas.last().precio()/2>=cosas.first().precio()
	}
	method primeraComidaComprada() {
		return cosas.first().esComida()
	}
}