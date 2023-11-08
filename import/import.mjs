import { readFile } from 'fs/promises';

const wasm = await readFile('print.wasm');
const module = await WebAssembly.instantiate(
  wasm,
  {
    env: {
      log: console.log,
    },
  }
);
const print = module.instance.exports.print;
print(13);
