;;;; Main system
;;;; This is the main system, the name needs to be the same as the filename tmplt-basic-lisp.asdf and 
;;;; the directory name as well.

(defsystem "tmplt-basic-lisp"
    :depends-on (:sha1)
    :serial t
    :components ((:file "src/package")
                 (:file "src/my-application"))
    :in-order-to ((test-op (test-op "tmplt-basic-lisp/test"))))

;;;; Test system
;;;; The system will automatically be found in this asdf file because of the hierarchical name with /.
;;;; Run the tests using: (asdf:test-system "tmplt-basic-lisp")

(defsystem "tmplt-basic-lisp/test"
    :depends-on (:lisp-unit)
    :serial t
    :components ((:file "t/package")
                 (:file "t/test"))
    :perform (test-op (o s) 
                      (progn
                        (in-package :basic-lisp-test)
                        (lisp-unit:run-tests :all))))

