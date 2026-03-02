#lang racket

(require [only-in plait test print-only-errors])

(define (msg o m . a)
  (apply (o m) a))

(define (make-o-with-state init)
  (let ([count init])
    (λ (msg)
      (case msg
        [(inc) (λ () (set! count (+ count 1)))]
        [(dec) (λ () (set! count (- count 1)))]
        [(get) (λ () count)]))))

(define with-state (make-o-with-state 0))
(msg with-state 'inc)
(msg with-state 'inc)
(msg with-state 'inc)
(msg with-state 'dec)
(test (msg with-state 'get) 2)
