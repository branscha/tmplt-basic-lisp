(in-package :asdf)

;;;; Main system
;;;; This is the main system, the name needs to be the same as the filename tmplt-basic-lisp.asdf and 
;;;; the directory name as well.

(defsystem :tmplt-basic-lisp
  :depends-on (:sha1)
  :serial t
  :components ((:file "src/package")
	       (:file "src/my-application"))
  ;; Delegate the test operaton to the test system.
  :in-order-to ((test-op (test-op :tmplt-basic-lisp/test ))))

;;;; Test system
;;;; The system will automatically be found in this asdf file because of the hierarchical name with /.
;;;; Run the tests using: (asdf:test-system :tmplt-basic-lisp)

(defsystem :tmplt-basic-lisp/test
  :depends-on (:tmplt-basic-lisp :lisp-unit)
  :serial t
  :components ((:file "t/package")
	       (:file "t/test"))
  ;; Make sure that we run the tests while the test package is loaded.
  ;; Otherwise the tests will not be found.
  :perform (test-op (o s)
		    (let ((*package* (find-package :basic-lisp-test)))
		      (uiop:symbol-call *package* '#:run-tests :all))))
