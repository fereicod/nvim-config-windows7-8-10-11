const isPalimdrome = str => {
  str = str.replace(/\s/g, '');
  const lowered = str.toLowerCase();
  const splitted = lowered.split('');
  const reversed = splitted.reverse();
  const joined = reversed.join('');
  return lowered == joined;
};
const a = isPalimdrome('Do geese see God');
console.log('Is a palimdrome =', a);


const getBiggets = num => num.reduce((acc, el) => acc > el ? acc : el);
const b = getBiggets([125, -1024, 354, 1245, 99, 1, 366]);
console.log('The greater number is =', b);

const multiply = (a, b) => {
  let resultado = 0;
  const positivo = Math.abs(b) == b;

  for (i = 0; i < Math.abs(b); i++) {
    resultado = positivo ? resultado + a : resultado - a;
  }
  return resultado;
}
const c = multiply(71, 9);//-49
console.log("The multiplication is =", c);

const clean = (cl) => cl.reduce((acc, el) => {
  if (el) {
    acc.push(el);
  }
  return acc;
}, []);
const d = clean([undefined, false, null, 1, 2, 0]);
console.log("Cleaning =", d);

const arr = [[1, 2, []], [[4, [5]], 6]];//[1, 2, [], [[4], [5], 6]];
const flatten = arr => arr.reduce((acc, el) => acc.concat(el));
const e = flatten(arr);
console.log('Flattened arrangement =', e);
