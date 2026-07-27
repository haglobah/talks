#lang racket

(require [only-in plait test print-only-errors])

(define (msg o m . a)
  (apply (o m) a))

(define make-o-with-static
  (let ([instances 0])
    (λ (amount-or-msg)
      (case amount-or-msg
        [(instances) (λ () instances)]
        [else
         (begin
           (set! instances (+ 1 instances))
           (λ (msg)
             (case msg
               [(inc) (λ (n) (set! amount-or-msg (+ amount-or-msg n)))]
               [(dec) (λ (n) (set! amount-or-msg (- amount-or-msg n)))]
               [(get) (λ () amount-or-msg)])))]))))

(test (msg make-o-with-static 'instances) 0)
(test (let ([o (make-o-with-static 1000)]) (msg make-o-with-static 'instances)) 1)
(test (let ([o (make-o-with-static 0)]) (msg make-o-with-static 'instances)) 2)
