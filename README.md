## WasmEdge入門

```sh
$ git submodule update
$ cargo build --target wasm32-wasi --release
$ wasmedge target/wasm32-wasi/release/app.wasm
$ curl -X POST http://127.0.0.1:1234 -d "name=WasmEdge"
```
