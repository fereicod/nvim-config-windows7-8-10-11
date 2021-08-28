// Ejercicio No.1: Realice un programa que multiplique dos números
// no debes utilizar el signo por (*).
const multiplicar = (a, b) => {
	let total = 0
  const esPostivo = Math.abs(b) == b

	for (i = 0; Math.abs(b); i++) {
		total = esPostivo ? total + a : total - a
	}
	return total
}

const esc = multiplicar(12, -12)
console.log("Resultado =", esc)
