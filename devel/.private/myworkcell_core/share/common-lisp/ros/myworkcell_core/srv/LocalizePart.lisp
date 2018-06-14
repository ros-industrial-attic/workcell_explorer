; Auto-generated. Do not edit!


(cl:in-package myworkcell_core-srv)


;//! \htmlinclude LocalizePart-request.msg.html

(cl:defclass <LocalizePart-request> (roslisp-msg-protocol:ros-message)
  ((base_frame
    :reader base_frame
    :initarg :base_frame
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizePart-request (<LocalizePart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizePart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizePart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myworkcell_core-srv:<LocalizePart-request> is deprecated: use myworkcell_core-srv:LocalizePart-request instead.")))

(cl:ensure-generic-function 'base_frame-val :lambda-list '(m))
(cl:defmethod base_frame-val ((m <LocalizePart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myworkcell_core-srv:base_frame-val is deprecated.  Use myworkcell_core-srv:base_frame instead.")
  (base_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizePart-request>) ostream)
  "Serializes a message object of type '<LocalizePart-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizePart-request>) istream)
  "Deserializes a message object of type '<LocalizePart-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizePart-request>)))
  "Returns string type for a service object of type '<LocalizePart-request>"
  "myworkcell_core/LocalizePartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizePart-request)))
  "Returns string type for a service object of type 'LocalizePart-request"
  "myworkcell_core/LocalizePartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizePart-request>)))
  "Returns md5sum for a message object of type '<LocalizePart-request>"
  "aa4cca5b67ec8a13449c405ec10ee5d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizePart-request)))
  "Returns md5sum for a message object of type 'LocalizePart-request"
  "aa4cca5b67ec8a13449c405ec10ee5d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizePart-request>)))
  "Returns full string definition for message of type '<LocalizePart-request>"
  (cl:format cl:nil "~%string base_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizePart-request)))
  "Returns full string definition for message of type 'LocalizePart-request"
  (cl:format cl:nil "~%string base_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizePart-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'base_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizePart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizePart-request
    (cl:cons ':base_frame (base_frame msg))
))
;//! \htmlinclude LocalizePart-response.msg.html

(cl:defclass <LocalizePart-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass LocalizePart-response (<LocalizePart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizePart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizePart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myworkcell_core-srv:<LocalizePart-response> is deprecated: use myworkcell_core-srv:LocalizePart-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LocalizePart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myworkcell_core-srv:pose-val is deprecated.  Use myworkcell_core-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizePart-response>) ostream)
  "Serializes a message object of type '<LocalizePart-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizePart-response>) istream)
  "Deserializes a message object of type '<LocalizePart-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizePart-response>)))
  "Returns string type for a service object of type '<LocalizePart-response>"
  "myworkcell_core/LocalizePartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizePart-response)))
  "Returns string type for a service object of type 'LocalizePart-response"
  "myworkcell_core/LocalizePartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizePart-response>)))
  "Returns md5sum for a message object of type '<LocalizePart-response>"
  "aa4cca5b67ec8a13449c405ec10ee5d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizePart-response)))
  "Returns md5sum for a message object of type 'LocalizePart-response"
  "aa4cca5b67ec8a13449c405ec10ee5d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizePart-response>)))
  "Returns full string definition for message of type '<LocalizePart-response>"
  (cl:format cl:nil "~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizePart-response)))
  "Returns full string definition for message of type 'LocalizePart-response"
  (cl:format cl:nil "~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizePart-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizePart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizePart-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalizePart)))
  'LocalizePart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalizePart)))
  'LocalizePart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizePart)))
  "Returns string type for a service object of type '<LocalizePart>"
  "myworkcell_core/LocalizePart")