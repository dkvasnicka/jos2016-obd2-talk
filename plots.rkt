#lang rackjure

(require plot
         json
         rnrs/io/ports-6)

(plot3d
  (points3d
    (sequence-map
      (compose
        (λ (l) (list ('speed l) ('load l) ('fuel-cons l)))
        string->jsexpr)
      (in-lines (open-file-input-port "log.json")))
    #:color 'red)
  #:width 1000
  #:height 1000)
