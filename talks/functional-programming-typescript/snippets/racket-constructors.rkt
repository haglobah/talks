#lang racket

(require [only-in plait test print-only-errors])

(define (msg o m . a)
  (apply (o m) a))

(define (construct-symmetric x)
  (λ (msg)
    (case msg
      [(add) (λ (n) (+ x n))]
      [(sub) (λ (n) (- x n))])))

(define twelve (construct-symmetric 12))
(define ten (construct-symmetric 10))
(test (msg twelve 'add 4) 16)
(test (msg ten 'sub 4) 6)
(test (msg twelve 'sub 4) 8)
