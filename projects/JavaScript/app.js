const flatten = arr => arr.reduce((acc, el) => acc.concat(el));
const a = flatten([[1, 2, []], 4, [5, [6]], 7]);//[1, 2, [], 4, [5, [6]], 7]
console.log(a);

const getBiggets = num => num.reduce((acc, el) => acc > el ? acc : el);
const b = getBiggets([210, -1024, 654, 99, 1, 1554, 66]);
console.log(b);

const clean = cl => cl.reduce((acc, el) => {
	if (el) {
		acc.push(el);
	}
	return acc;
}, []);
const c = clean([undefined, false, 1, 0, 2, null]);
console.log(c);
