(defsystem find-port-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :depends-on (:find-port
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "find-port")))))
