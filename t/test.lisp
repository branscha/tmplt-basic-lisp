(in-package :basic-lisp-test)

(setq *print-failures* t)

(define-test runnertest
  (assert-equal "Ck1VqNd45QIvq3AZd8XYQLvEhtA=" (run)))
