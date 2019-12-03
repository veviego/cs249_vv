; Auto-generated. Do not edit!


(cl:in-package rostls-msg)


;//! \htmlinclude Greeting.msg.html

(cl:defclass <Greeting> (roslisp-msg-protocol:ros-message)
  ((greeting
    :reader greeting
    :initarg :greeting
    :type cl:string
    :initform ""))
)

(cl:defclass Greeting (<Greeting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Greeting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Greeting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostls-msg:<Greeting> is deprecated: use rostls-msg:Greeting instead.")))

(cl:ensure-generic-function 'greeting-val :lambda-list '(m))
(cl:defmethod greeting-val ((m <Greeting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostls-msg:greeting-val is deprecated.  Use rostls-msg:greeting instead.")
  (greeting m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Greeting>) ostream)
  "Serializes a message object of type '<Greeting>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'greeting))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'greeting))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Greeting>) istream)
  "Deserializes a message object of type '<Greeting>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'greeting) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'greeting) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Greeting>)))
  "Returns string type for a message object of type '<Greeting>"
  "rostls/Greeting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Greeting)))
  "Returns string type for a message object of type 'Greeting"
  "rostls/Greeting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Greeting>)))
  "Returns md5sum for a message object of type '<Greeting>"
  "af3498ba158bcdd555fe81847eb6e16d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Greeting)))
  "Returns md5sum for a message object of type 'Greeting"
  "af3498ba158bcdd555fe81847eb6e16d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Greeting>)))
  "Returns full string definition for message of type '<Greeting>"
  (cl:format cl:nil "string greeting~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Greeting)))
  "Returns full string definition for message of type 'Greeting"
  (cl:format cl:nil "string greeting~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Greeting>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'greeting))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Greeting>))
  "Converts a ROS message object to a list"
  (cl:list 'Greeting
    (cl:cons ':greeting (greeting msg))
))
