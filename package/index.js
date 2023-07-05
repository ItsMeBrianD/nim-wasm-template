import applicationWasmUrl from "./application.wasm?url";

export async function load() {
  return WebAssembly.compileStreaming(fetch(applicationWasmUrl)).then((wasmMod) => {
    // Run the WASM module.
    for (let i of WebAssembly.Module.exports(wasmMod)) {
      let n = i.name;
      if (n[0] === ";") {
        return new Function("m", n)(wasmMod);
      }
    }
  });
}
