(in-package :basic-lisp)

(defun run () 
  (let* ((data "Hello World") (hash (sha1:sha1-base64 data)))
   (format t "~a == ~a" data hash)
   hash ))
