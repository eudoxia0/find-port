(defsystem find-ports-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :depends-on (:find-ports
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "find-ports")))))
