(module
  (import "env" "log" (func $log (param i32)))
  (func $print (param $n i32)
    local.get $n
    call $log
  )
  (export "print" (func $print))
)
