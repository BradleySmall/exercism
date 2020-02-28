(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun leap-year-p (year)
  (flet ((divis  (div) (zerop (mod year div)))
         (ndivis (div) (not (zerop (mod year div)))))
    (and (divis 4)
         (or (ndivis 100) (divis 400)))))
