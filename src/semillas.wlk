class Planta {
	const anioDeObtencion
	var altura
	method toleranciaAlSol()
	method esFuerte() = self.toleranciaAlSol() >10
	method daNuevasSemillas(){return self.esFuerte() or self.condicionAlternativa()}
	method condicionAlternativa()
	
}

class Menta inherits Planta{
	
	override method toleranciaAlSol()=6
	override method condicionAlternativa()= altura > 0.4
	method espacio() =altura * 3
	}
	
class Soja inherits Planta{
	
	override method toleranciaAlSol() {return if (altura < 0.5) {6}else if (altura >= 0.5 and altura < 1){7}else{9}} 	
	override method condicionAlternativa()= anioDeObtencion > 2007 and altura > 1 
	method espacio() = altura/2
}
class Quinoa inherits Planta{
	const toleranciaAlSol
	override method toleranciaAlSol() = toleranciaAlSol
	override method condicionAlternativa() = anioDeObtencion < 2005
	method espacio() = 0.5
}

