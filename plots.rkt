#lang racket

(require plot
         json
         rnrs/io/ports-6)

(define data-seq
  (for/stream ([line (in-lines
                       (open-file-input-port "log.json"))])
              (string->jsexpr line)))

(define (value-seqs data cols)
  (for/stream ([jsobj data])
              (map (curry hash-ref jsobj) 
                   cols)))

(define (draw-plot cols)
  (plot3d
    (points3d
      (value-seqs data-seq cols)
      #:color 'blue
      #:fill-color 'red
      #:sym 'fullcircle)
    #:width 1000
    #:height 1000
    #:bgcolor 'lightgray
    #:angle 313
    #:altitude 10))

(draw-plot '(speed load fuel-cons))
(draw-plot '(temp load fuel-cons))
(draw-plot '(rpm speed fuel-cons))
