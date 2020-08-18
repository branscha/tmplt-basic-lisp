;;;; Package definition of the main package
;;;; The package name does not have to be the same as the system name.

(defpackage :basic-lisp
  (:use cl)
  (:import-from :sha1)
  (:export :run))
