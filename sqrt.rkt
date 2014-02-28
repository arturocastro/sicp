#lang racket

(define (mySquare x) (* x x))

(define (average a b) (/ (+ a b) 2))

(define (goodEnough guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))

(define (sqrtIter guess x)
  (if (goodEnough guess x)
      guess
      (sqrtIter (improve guess x)
                x)))

(define (improve guess x)
  (average guess (/ x guess)))
       
(define (mySqrt x)
  (sqrtIter 1.0 x))

(mySqrt 9)

(mySqrt (+ 100 37))

(mySqrt (+ (mySqrt 2) (mySqrt 3)))

(mySquare (mySqrt 1000))