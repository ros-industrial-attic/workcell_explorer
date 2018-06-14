
(cl:in-package :asdf)

(defsystem "myworkcell_core-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "LocalizePart" :depends-on ("_package_LocalizePart"))
    (:file "_package_LocalizePart" :depends-on ("_package"))
  ))