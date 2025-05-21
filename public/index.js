// Importamos las funciones desde calculadora.js (o el archivo donde estén)
const { sumar, restar, multiplicar, dividir } = require('../calculadora');

// Probamos las funciones

console.log('Sumar 5 + 3 =', sumar(5, 3));
console.log('Restar 10 - 4 =', restar(10, 4));
console.log('Multiplicar 6 * 7 =', multiplicar(6, 7));
console.log('Dividir 20 / 5 =', dividir(20, 5));
