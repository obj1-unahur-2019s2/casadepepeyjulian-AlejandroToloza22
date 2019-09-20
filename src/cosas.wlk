object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesasRebozadas {
	var property precio = 260
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object salsaDeTomates {
	var property precio = 90
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object kgDeCebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object dolar {
	method cotizacion() {
		return 1*60
	}
}

object compu {
	method precio() { return 500*dolar.cotizacion()}
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object packDeComida {
	var property aderezo = kgDeCebollas
	var property plato = milanesasRebozadas
	method precio() {
		return aderezo.precio() + plato.precio()
	}
	method esComida() {
		return true
	}
	method esElectrodomestico() {
		return false
	}
}

object packDeRegalo {
	var pack = []
	method agregarAlPack(cosa) {
		return pack.add(cosa)
	}
	method precio() {
		return pack.sum({cosa => cosa.precio()})*0.8
	}
	method esComida() {
		return pack.all({cosa => cosa.esComida()})
	}
	method esElectrodomestico() {
		return pack.any({cosa => cosa.esElectrodomestico()})
	}
}