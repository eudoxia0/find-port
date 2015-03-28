(in-package :cl-user)
(defpackage find-ports
  (:use :cl)
  (:export :port-open-p
           :find-port))
(in-package :find-ports)

(defun port-open-p (port)
  "Determine if the port is open."
  (handler-case
      (let ((socket (usocket:socket-listen "127.0.0.1" port
                                           :reuse-address t)))
        (usocket:socket-close socket))
    (usocket:address-in-use-error (condition)
      (declare (ignore condition))
      nil)))

(defun find-port (&key (min 49152) (max 65535))
  "Return the first available port in a range of port numbers."
  (loop for port from min to max until (port-open-p port)
        finally (return port)))
