; Auto-generated. Do not edit!


(cl:in-package rostls-srv)


;//! \htmlinclude Echo-request.msg.html

(cl:defclass <Echo-request> (roslisp-msg-protocol:ros-message)
  ((call
    :reader call
    :initarg :call
    :type cl:string
    :initform ""))
)

(cl:defclass Echo-request (<Echo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Echo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Echo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostls-srv:<Echo-request> is deprecated: use rostls-srv:Echo-request instead.")))

(cl:ensure-generic-function 'call-val :lambda-list '(m))
(cl:defmethod call-val ((m <Echo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostls-srv:call-val is deprecated.  Use rostls-srv:call instead.")
  (call m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Echo-request>) ostream)
  "Serializes a message object of type '<Echo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'call))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'call))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Echo-request>) istream)
  "Deserializes a message object of type '<Echo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'call) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'call) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Echo-request>)))
  "Returns string type for a service object of type '<Echo-request>"
  "rostls/EchoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Echo-request)))
  "Returns string type for a service object of type 'Echo-request"
  "rostls/EchoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Echo-request>)))
  "Returns md5sum for a message object of type '<Echo-request>"
  "26085aab37368ac2457ca01f3459ff4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Echo-request)))
  "Returns md5sum for a message object of type 'Echo-request"
  "26085aab37368ac2457ca01f3459ff4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Echo-request>)))
  "Returns full string definition for message of type '<Echo-request>"
  (cl:format cl:nil "string call~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Echo-request)))
  "Returns full string definition for message of type 'Echo-request"
  (cl:format cl:nil "string call~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Echo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'call))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Echo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Echo-request
    (cl:cons ':call (call msg))
))
;//! \htmlinclude Echo-response.msg.html

(cl:defclass <Echo-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass Echo-response (<Echo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Echo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Echo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostls-srv:<Echo-response> is deprecated: use rostls-srv:Echo-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Echo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostls-srv:response-val is deprecated.  Use rostls-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Echo-response>) ostream)
  "Serializes a message object of type '<Echo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Echo-response>) istream)
  "Deserializes a message object of type '<Echo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Echo-response>)))
  "Returns string type for a service object of type '<Echo-response>"
  "rostls/EchoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Echo-response)))
  "Returns string type for a service object of type 'Echo-response"
  "rostls/EchoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Echo-response>)))
  "Returns md5sum for a message object of type '<Echo-response>"
  "26085aab37368ac2457ca01f3459ff4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Echo-response)))
  "Returns md5sum for a message object of type 'Echo-response"
  "26085aab37368ac2457ca01f3459ff4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Echo-response>)))
  "Returns full string definition for message of type '<Echo-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Echo-response)))
  "Returns full string definition for message of type 'Echo-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Echo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Echo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Echo-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Echo)))
  'Echo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Echo)))
  'Echo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Echo)))
  "Returns string type for a service object of type '<Echo>"
  "rostls/Echo")