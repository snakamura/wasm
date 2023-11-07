emcc -o js.js helloworld.c
node js

emcc -o standalone.wasm helloworld.c
wasmer standalone.wasm
