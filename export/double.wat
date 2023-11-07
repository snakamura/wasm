(module
  (func $double (param $n i32) (result i32)
    local.get $n
    local.get $n
    i32.add
  )
  (export "double" (func $double))
)
