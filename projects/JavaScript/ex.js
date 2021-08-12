//*----- Ejercicio No. 1 -----*
const multiply = (a, b) => {
	let resultado = 0
	const positivo = Math.abs(b) == b
	for (i = 0; i < Math.abs(b); i++) {
		resultado = positivo ? resultado + a : resultado - a
	}
	return resultado
}

//*----- Ejercicio No. 2 -----*
const a = multiply(50, -50)
console.log(a);

const getBiggest = (arr) => arr.reduce((acc, el) => acc > el ? acc : el)
const b = getBiggest([50, -1500, 214, 1, 15, 0, 5])
console.log(b);

//*----- Ejercicio No. 3 -----*
const clean = (arr) => arr.reduce((acc, el) => {
	if (el) {
		acc.push(el)
	}
	return acc
}, [])

const c = clean([1, undefined, null, 0, 2 , 8])
console.log("Respuesta:", c);

//*----- Ejercicio No. 4 -----*
const arr = [[1, 2], [[3, 4]], [1, []]] //[1, 2], [3, 4], 1, []]
const flatten = arr => arr.reduce((acc, el) => acc.concat(el), [])
const d = flatten(arr)
console.log("Arreglo aplanado:", d)

//*----- Ejercicio No. 5 -----*
const repeated = str => {
	const lowered = str.toLowerCase()
	const splitted = lowered.split(' ')
	const reduced = splitted.reduce((acc, el) => {
		if (acc[el]) {
			acc[el]++
		} else {
			acc[el] = 1
		}
		return acc
}, {})
	return Object.entries(reduced).reduce((acc, el) => acc[1] > el[1] ? acc : el)
}
const e = repeated('Esto es una palabra repetida una largo una')
console.log("La palabra:", e)

//*----- Ejercicio No. 6 -----*
const isPalindrome = (str) => {
	str = str.replace(/\s/g, '')
	const lowered = str.toLowerCase()
	const splitted = lowered.split('')
	const reversed = splitted.reverse()
	const joined = reversed.join('')
	return lowered == joined
}

const f = isPalindrome('Do geese see God')
console.log("Do geese see God ¿Es un palimdromo?:", f)
