#lang racket
(define (square x) (* x x))
(define (sumOfSquares a b) (+ (square a) (square b)))
(define (e13 a b c) (cond ((and (< a b)
                                (< a c)) (sumOfSquares b c))
                          ((and (< b a)
                                (< b c)) (sumOfSquares a c))
                          (else (sumOfSquares a b))))