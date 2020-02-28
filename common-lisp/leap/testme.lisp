(defvar proj-name)
(defvar load-cmd)
(defvar ut-cmd)

(setq proj-name
      (format  "%s" (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
(setq load-cmd
  (format "(load \"%s\")" proj-name))
(setq ut-cmd
  (format "(lisp-unit::run-test :all  :%s)" proj-name))

proj-name
load-cmd
ut-cmd

(format "%s" (file-name-sans-extension (file-name-nondirectory (buffer-file-name))))

