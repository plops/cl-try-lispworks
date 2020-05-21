;; copy and paste the following into lispworks personal console:

(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
(ql:quickload "swank")
(swank:create-server)


;; in emacs run M-x slime-connect

(defpackage "g"
  (:add-use-defaults t)
  (:use "CAPI"))
