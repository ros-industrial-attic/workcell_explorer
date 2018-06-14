#include <ros/ros.h>
#include <myworkcell_core/LocalizePart.h>
#include<tf/tf.h>
#include<moveit/move_group_interface/move_group_interface.h>

class ScanNPlan
{
public:
  ScanNPlan(ros::NodeHandle& nh)
  {
    vision_client_ = nh.serviceClient<myworkcell_core::LocalizePart>("localize_part");
  }

  void start(const std::string& base_frame)
  {
    ROS_INFO("Attempting to localize part");

    // Localize the part
    myworkcell_core::LocalizePart srv;
    srv.request.base_frame = base_frame;
    ROS_INFO_STREAM("Requesting pose in base frame: " << base_frame);

    if (!vision_client_.call(srv))
    {
      ROS_ERROR("Could not localize part");
      return;
    }
    ROS_INFO_STREAM("part localized: " << srv.response);
	  // The response from the vision client is stored as the target point for the robot 
	  geometry_msgs::Pose move_target= srv.response.pose; 
    
    //Create a MoveGroup interface object which takes manipulator, name of the move group in the constructor
    moveit::planning_interface::MoveGroupInterface move_group("manipulator");
    
    // Use the objects setPosetarget in order to set a target for the manipulator to move
    move_group.setPoseTarget(move_target);
    move_group.move(); 
  }

private:
  // Planning components
  ros::ServiceClient vision_client_;
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "myworkcell_node");
  ros::NodeHandle nh;
  ros::NodeHandle private_node_handle("~");

  ROS_INFO("ScanNPlan node has been initialized");

  std::string base_frame;
  private_node_handle.param<std::string>("base_frame", base_frame, "world"); // parameter name, string object reference, default value

  ScanNPlan app(nh);
  ros::Duration(.5).sleep();  // wait for the class to initialize
  app.start(base_frame);

  //ros::spin();
  
  // Replaced ros::spin() with an asynchronous spinner
  ros::AsyncSpinner async_spinner(4); // Use 4 threads
  async_spinner.start();
  ros::waitForShutdown(); 
}
