(in-package :basic-lisp-test)

(setq *print-failures* t)

(lisp-unit:define-test runnertest
  (lisp-unit:assert-equal "Ck1VqNd45QIvq3AZd8XYQLvEhtA=" (basic-lisp:run)))


