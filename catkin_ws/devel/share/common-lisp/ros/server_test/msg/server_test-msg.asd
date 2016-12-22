
(cl:in-package :asdf)

(defsystem "server_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "testmsg (copy)" :depends-on ("_package_testmsg (copy)"))
    (:file "_package_testmsg (copy)" :depends-on ("_package"))
    (:file "" :depends-on ("_package_"))
    (:file "_package_" :depends-on ("_package"))
    (:file "testmsg" :depends-on ("_package_testmsg"))
    (:file "_package_testmsg" :depends-on ("_package"))
  ))