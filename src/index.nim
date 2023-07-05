import wasmrt

# Simple function that can be called from JS
# Note the `exportwasm` pragma
proc fibonacci(n: int): int {.exportwasm.} =
  if n < 2:
    result = n
  else:
    result = fibonacci(n - 1) + (n - 2).fibonacci
  return result
