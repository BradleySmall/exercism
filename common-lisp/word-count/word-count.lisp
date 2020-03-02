(in-package #:cl-user)
(defpackage #:word-count
  (:use #:cl)
  (:export #:count-words))
(in-package #:word-count)

(defun count-words (sentence)
  (loop
     :with res-list = '()
     :for x :in (uiop:split-string sentence :separator '(#\Space #\, #\Newline #\Return ))
     :do (if (assoc (string-trim "'." x) res-list :test #'string-equal)
             (incf (cdr (assoc (string-trim "'!@#$%^&*()_+:;{}|,.-=`~<>?/" x) res-list :test #'string-equal)))
             (if (/= 0 (length (string-trim "'!@#$%^&*()_+:;{}|,.-=`~<>?/" x))) (setq res-list (acons (string-trim "'!@#$%^&*()_+:;{}|,.-=`~<>?/" (string-downcase x)) 1 res-list))))
     :finally (return res-list)))
