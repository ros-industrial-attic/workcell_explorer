
(cl:in-package :asdf)

(defsystem "rtabmap_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Goal" :depends-on ("_package_Goal"))
    (:file "_package_Goal" :depends-on ("_package"))
    (:file "Info" :depends-on ("_package_Info"))
    (:file "_package_Info" :depends-on ("_package"))
    (:file "KeyPoint" :depends-on ("_package_KeyPoint"))
    (:file "_package_KeyPoint" :depends-on ("_package"))
    (:file "Link" :depends-on ("_package_Link"))
    (:file "_package_Link" :depends-on ("_package"))
    (:file "MapData" :depends-on ("_package_MapData"))
    (:file "_package_MapData" :depends-on ("_package"))
    (:file "MapGraph" :depends-on ("_package_MapGraph"))
    (:file "_package_MapGraph" :depends-on ("_package"))
    (:file "NodeData" :depends-on ("_package_NodeData"))
    (:file "_package_NodeData" :depends-on ("_package"))
    (:file "OdomInfo" :depends-on ("_package_OdomInfo"))
    (:file "_package_OdomInfo" :depends-on ("_package"))
    (:file "Point2f" :depends-on ("_package_Point2f"))
    (:file "_package_Point2f" :depends-on ("_package"))
    (:file "Point3f" :depends-on ("_package_Point3f"))
    (:file "_package_Point3f" :depends-on ("_package"))
    (:file "RGBDImage" :depends-on ("_package_RGBDImage"))
    (:file "_package_RGBDImage" :depends-on ("_package"))
    (:file "UserData" :depends-on ("_package_UserData"))
    (:file "_package_UserData" :depends-on ("_package"))
  ))