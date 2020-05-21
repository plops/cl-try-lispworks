;; i try lispworks personal edition with slime in emacs.
;; i want to see how well capi works

;; copy and paste the following into lispworks personal console:
;; /usr/local/lib64/LispWorksPersonal/lispworks-personal-7-1-2-amd64-linux
;; /usr/local/lib64/LispWorks*/lispw*-amd64-linux
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
(ql:quickload "swank")
(swank:create-server)


;; in emacs run M-x slime-connect
;; say yes when asked if to close old connection

(defpackage "g"
  (:add-use-defaults t)
  (:use "CAPI"))

(in-package "g")

;; http://www.lispworks.com/documentation/lw71/CAPI-M/html/capi-m.htm

(setf interface (make-instance 'interface
			       :visible-min-width 200
			       :title "my interface"))

(display interface)
