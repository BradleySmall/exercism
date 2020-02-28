(in-package #:cl-user)
(defpackage #:rna-transcription
  (:use #:cl)
  (:export #:to-rna))
(in-package #:rna-transcription)

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (map 'string (lambda (c)
                 (case c (#\G #\C)
                         (#\C #\G)
                         (#\T #\A)
                         (#\A #\U)))
       str))
