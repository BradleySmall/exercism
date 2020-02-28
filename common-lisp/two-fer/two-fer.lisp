(in-package #:cl-user)
(defpackage #:two-fer
  (:use #:cl)
  (:export #:twofer))
(in-package #:two-fer)
;; Here is the chanage to (or and removal of the redundancy for optional
;; (defun twofer (&optional name)
;;   (format nil "One for ~a, one for me." (or name "you")))
;; Here is just using the format function. There are lots of ~ in there
;;  and I am not certain how to read this. 
(defun twofer (&optional name)
  (format nil "One for ~:[you~;~:*~a~], one for me." name))
