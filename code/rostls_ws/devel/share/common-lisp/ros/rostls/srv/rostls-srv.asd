
(cl:in-package :asdf)

(defsystem "rostls-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Echo" :depends-on ("_package_Echo"))
    (:file "_package_Echo" :depends-on ("_package"))
  ))