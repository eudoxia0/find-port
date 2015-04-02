(in-package :cl-user)
(defpackage find-ports-test
  (:use :cl :fiveam))
(in-package :find-ports-test)

(def-suite tests
  :description "find-ports tests.")
(in-suite tests)

(test find-ports
  (finishes
    (find-ports:find-port))
  (let ((port (find-ports:find-port)))
    (is
     (integerp port))
    (is
     (find-ports:port-open-p port))))

(run! 'tests)
