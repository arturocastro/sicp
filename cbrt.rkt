#lang racket

(define (mySquare x) (* x x))
(define (myCube x) (* x x x))

(define (average a b) (/ (+ a b) 2))

(define (goodEnough guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))

(define (cbrtIter guess x)
  (if (goodEnough guess x)
      guess
      (cbrtIter (improve guess x)
                x)))

(define (improve guess x)
  (average guess (/ 
                  (+ (/ x (mySquare guess)) (* guess 2))
                  3)))
       
(define (myCbrt x)
  (cbrtIter 1.0 x))

(myCbrt 27)

(myCbrt 16)

(myCbrt (+ (myCbrt 2) (myCbrt 3)))

(mySquare (myCbrt 1000))