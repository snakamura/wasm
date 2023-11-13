(module
  (func $sumUpTo
    (param $n i32)
    (result i32)

    (local $sum i32)

    (local.set $sum
      (i32.const 0)
    )

    (loop $loop
      (if (local.get $n)
        (then
          (local.set $sum
            (i32.add
              (local.get $sum)
              (local.get $n)
            )
          )
          (local.set $n
            (i32.sub
              (local.get $n)
              (i32.const 1)
            )
          )
          br $loop
        )
      )
    )

    local.get $sum
  )
  (export "sumUpTo" (func $sumUpTo))
)
