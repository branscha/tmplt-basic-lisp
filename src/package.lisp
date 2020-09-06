;;;; Package definition of the main package
;;;; The package name does not have to be the same as the system name.

(in-package :common-lisp-user)

(defpackage :basic-lisp
  (:use :common-lisp :sha1)
  (:export :run))
