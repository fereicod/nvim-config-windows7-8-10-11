const arreglo = (arr) => arr.reduce((acc, el) => acc > el ? acc : el)
const a = arreglo([4, 8, 1, 102, 6, 9, 0])
console.log(a)
