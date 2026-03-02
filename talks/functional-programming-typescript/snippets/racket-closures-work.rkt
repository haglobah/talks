#lang racket

(require [only-in plait test print-only-errors])

(define o
  (λ (msg)
    (case msg
      [(add1) (λ (n) (+ n 1))]
      [(sub1) (λ (n) (- n 1))])))

(test ((o 'add1) 0) 1)
