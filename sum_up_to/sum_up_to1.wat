(module
  (func $sumUpTo
    (param $n i32)
    (result i32)

    (local $sum i32)

    i32.const 0
    local.set $sum

    loop $loop
      local.get $n
      if
        local.get $sum
        local.get $n
        i32.add
        local.set $sum

        local.get $n
        i32.const 1
        i32.sub
        local.set $n

        br $loop
      end
    end

    local.get $sum
  )
  (export "sumUpTo" (func $sumUpTo))
)
