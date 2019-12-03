;; Auto-generated. Do not edit!


(when (boundp 'rostls::Echo)
  (if (not (find-package "ROSTLS"))
    (make-package "ROSTLS"))
  (shadow 'Echo (find-package "ROSTLS")))
(unless (find-package "ROSTLS::ECHO")
  (make-package "ROSTLS::ECHO"))
(unless (find-package "ROSTLS::ECHOREQUEST")
  (make-package "ROSTLS::ECHOREQUEST"))
(unless (find-package "ROSTLS::ECHORESPONSE")
  (make-package "ROSTLS::ECHORESPONSE"))

(in-package "ROS")





(defclass rostls::EchoRequest
  :super ros::object
  :slots (_call ))

(defmethod rostls::EchoRequest
  (:init
   (&key
    ((:call __call) "")
    )
   (send-super :init)
   (setq _call (string __call))
   self)
  (:call
   (&optional __call)
   (if __call (setq _call __call)) _call)
  (:serialization-length
   ()
   (+
    ;; string _call
    4 (length _call)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _call
       (write-long (length _call) s) (princ _call s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _call
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _call (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rostls::EchoResponse
  :super ros::object
  :slots (_response ))

(defmethod rostls::EchoResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rostls::Echo
  :super ros::object
  :slots ())

(setf (get rostls::Echo :md5sum-) "26085aab37368ac2457ca01f3459ff4a")
(setf (get rostls::Echo :datatype-) "rostls/Echo")
(setf (get rostls::Echo :request) rostls::EchoRequest)
(setf (get rostls::Echo :response) rostls::EchoResponse)

(defmethod rostls::EchoRequest
  (:response () (instance rostls::EchoResponse :init)))

(setf (get rostls::EchoRequest :md5sum-) "26085aab37368ac2457ca01f3459ff4a")
(setf (get rostls::EchoRequest :datatype-) "rostls/EchoRequest")
(setf (get rostls::EchoRequest :definition-)
      "string call
---
string response

")

(setf (get rostls::EchoResponse :md5sum-) "26085aab37368ac2457ca01f3459ff4a")
(setf (get rostls::EchoResponse :datatype-) "rostls/EchoResponse")
(setf (get rostls::EchoResponse :definition-)
      "string call
---
string response

")



(provide :rostls/Echo "26085aab37368ac2457ca01f3459ff4a")


