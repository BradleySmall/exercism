(in-package #:cl-user)
(defpackage #:word-count
  (:use #:cl)
  (:export #:count-words))
(in-package #:word-count)

(defun count-words (sentence)
  (loop
    :with res-list = '()
    :for x :in (uiop:split-string sentence :separator '(#\Space #\, #\Newline #\Return ))
    :do (let ((word (string-downcase (string-trim "'!@#$%^&*()_+:;{}|,.-=`~<>?/" x))))
          (if (assoc word res-list :test #'string-equal)
              (incf (cdr (assoc word res-list :test #'string-equal)))
              (if (/= 0 (length word))
                  (setq res-list (acons word 1 res-list)))))
    :finally (return res-list)))
