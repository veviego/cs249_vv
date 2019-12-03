;; Auto-generated. Do not edit!


(when (boundp 'rostls::Greeting)
  (if (not (find-package "ROSTLS"))
    (make-package "ROSTLS"))
  (shadow 'Greeting (find-package "ROSTLS")))
(unless (find-package "ROSTLS::GREETING")
  (make-package "ROSTLS::GREETING"))

(in-package "ROS")
;;//! \htmlinclude Greeting.msg.html


(defclass rostls::Greeting
  :super ros::object
  :slots (_greeting ))

(defmethod rostls::Greeting
  (:init
   (&key
    ((:greeting __greeting) "")
    )
   (send-super :init)
   (setq _greeting (string __greeting))
   self)
  (:greeting
   (&optional __greeting)
   (if __greeting (setq _greeting __greeting)) _greeting)
  (:serialization-length
   ()
   (+
    ;; string _greeting
    4 (length _greeting)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _greeting
       (write-long (length _greeting) s) (princ _greeting s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _greeting
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _greeting (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rostls::Greeting :md5sum-) "af3498ba158bcdd555fe81847eb6e16d")
(setf (get rostls::Greeting :datatype-) "rostls/Greeting")
(setf (get rostls::Greeting :definition-)
      "string greeting

")



(provide :rostls/Greeting "af3498ba158bcdd555fe81847eb6e16d")


