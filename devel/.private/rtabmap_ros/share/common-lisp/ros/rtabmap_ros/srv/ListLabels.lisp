; Auto-generated. Do not edit!


(cl:in-package rtabmap_ros-srv)


;//! \htmlinclude ListLabels-request.msg.html

(cl:defclass <ListLabels-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListLabels-request (<ListLabels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListLabels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListLabels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_ros-srv:<ListLabels-request> is deprecated: use rtabmap_ros-srv:ListLabels-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListLabels-request>) ostream)
  "Serializes a message object of type '<ListLabels-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListLabels-request>) istream)
  "Deserializes a message object of type '<ListLabels-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListLabels-request>)))
  "Returns string type for a service object of type '<ListLabels-request>"
  "rtabmap_ros/ListLabelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListLabels-request)))
  "Returns string type for a service object of type 'ListLabels-request"
  "rtabmap_ros/ListLabelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListLabels-request>)))
  "Returns md5sum for a message object of type '<ListLabels-request>"
  "17b562487ca772bdfa2c078ef00d870f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListLabels-request)))
  "Returns md5sum for a message object of type 'ListLabels-request"
  "17b562487ca772bdfa2c078ef00d870f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListLabels-request>)))
  "Returns full string definition for message of type '<ListLabels-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListLabels-request)))
  "Returns full string definition for message of type 'ListLabels-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListLabels-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListLabels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListLabels-request
))
;//! \htmlinclude ListLabels-response.msg.html

(cl:defclass <ListLabels-response> (roslisp-msg-protocol:ros-message)
  ((labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListLabels-response (<ListLabels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListLabels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListLabels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_ros-srv:<ListLabels-response> is deprecated: use rtabmap_ros-srv:ListLabels-response instead.")))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <ListLabels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:labels-val is deprecated.  Use rtabmap_ros-srv:labels instead.")
  (labels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListLabels-response>) ostream)
  "Serializes a message object of type '<ListLabels-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'labels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListLabels-response>) istream)
  "Deserializes a message object of type '<ListLabels-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListLabels-response>)))
  "Returns string type for a service object of type '<ListLabels-response>"
  "rtabmap_ros/ListLabelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListLabels-response)))
  "Returns string type for a service object of type 'ListLabels-response"
  "rtabmap_ros/ListLabelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListLabels-response>)))
  "Returns md5sum for a message object of type '<ListLabels-response>"
  "17b562487ca772bdfa2c078ef00d870f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListLabels-response)))
  "Returns md5sum for a message object of type 'ListLabels-response"
  "17b562487ca772bdfa2c078ef00d870f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListLabels-response>)))
  "Returns full string definition for message of type '<ListLabels-response>"
  (cl:format cl:nil "~%string[] labels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListLabels-response)))
  "Returns full string definition for message of type 'ListLabels-response"
  (cl:format cl:nil "~%string[] labels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListLabels-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListLabels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListLabels-response
    (cl:cons ':labels (labels msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListLabels)))
  'ListLabels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListLabels)))
  'ListLabels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListLabels)))
  "Returns string type for a service object of type '<ListLabels>"
  "rtabmap_ros/ListLabels")