# Package

version       = "0.1.0"
author        = "Brian D"
description   = "A starter template for building nim -> wasm projects"
license       = "MIT"
srcDir        = "src"
bin           = @["nim_wasm_template"]


# Dependencies

requires "nim >= 1.6.10"
requires "https://github.com/ItsMeBrianD/wasmrt >= 0.1.0"