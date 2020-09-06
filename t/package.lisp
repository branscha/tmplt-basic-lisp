;;;; Package definition of the test package
;;;; The package name does not have to be the same as the main package name.

(in-package :common-lisp-user)

(defpackage :basic-lisp-test
  (:use :common-lisp :lisp-unit :basic-lisp))
