#! /usr/bin/scheme --script
(display "Start inc compiler!")

; The compile-program definition must be before the load statement.
(define (compile-program expr)
   (emit ".globl scheme_entry")
   (emit "  .type scheme_entry, @function")
   (emit "scheme_entry:")
   (emit "  movl $~a, %eax" expr)
   (emit "  ret")
  )
(load "tests-driver.scm")
(load "tests-1.1-req.scm")

(test-all)
