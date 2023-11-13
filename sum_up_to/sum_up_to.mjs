import { readFile } from 'fs/promises';

async function run(name) {
  const wasm = await readFile(name);
  const module = await WebAssembly.instantiate(wasm);
  const sumUpTo = module.instance.exports.sumUpTo;
  const result = sumUpTo(10);
  console.log(result);
}

run('sum_up_to1.wasm')
run('sum_up_to2.wasm')
