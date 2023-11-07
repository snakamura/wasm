import { readFile } from 'fs/promises';

const wasm = await readFile('double.wasm');
const module = await WebAssembly.instantiate(wasm);
const double = module.instance.exports.double;
const result = double(5);
console.log(result);
