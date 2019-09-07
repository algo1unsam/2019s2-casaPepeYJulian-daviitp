

object cuenta {
	
	var saldo = 0
	
	method depositar(importe) {
		saldo = saldo + importe
	}
	
	method extraer(importe) {
		if (saldo >= importe){
			saldo = saldo - importe
		}
		else
			self.error("Saldo insuficiente")
	}
	
	method saldo() {
		return saldo
	}
}