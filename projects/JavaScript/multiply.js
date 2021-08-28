// Realice un programa que multiplique dos números, sin utilizar el signo por (*)
const multiply = (a, b) => {
  let resultado = 0
  const positivo = Math.abs(b) == b

  for (i=0; i < Math.abs(b); i++) {
      resultado = positivo ? resultado + a : resultado - a
  }
  return resultado
}

const a = multiply(12, -4)
console.log("[12x-4] =", a)
