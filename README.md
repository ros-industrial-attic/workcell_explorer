**Google Summer of Code 2018 - Robot Workcell Discovery**

Repository for GSoC 2018 focusing on creation of a ROS package for Robotic Workcell exploration. The project is being done under the mentorship of [Levi Armstrong](https://github.com/Levi-Armstrong) and [Alex Goins](https://github.com/akgoins from [SwRI](https://www.swri.org/) and [ROS Industrial](https://rosindustrial.org/).

___

## Relevant Links

1. [Accepted projects under OSRF for GSoC 2018](https://summerofcode.withgoogle.com/organizations/5366449791565824/)

2. [Abstract for project on Robot WorkCell Discovery](https://summerofcode.withgoogle.com/projects/#6587806298669056)

3. [Initial Project Proposal](https://storage.googleapis.com/summerofcode-prod.appspot.com/gsoc/core_project/doc/6641891613868032_1522157594_GSoc_2018_Proposal-_Robot_Work_Cell_Discovery.pdf?Expires=1529053304&GoogleAccessId=summerofcode-prod%40appspot.gserviceaccount.com&Signature=U2SgVkEN%2FIxaRq4FF6QqIs2S5WvuqGawtN6QJQAYX0ONSLfyFtBVDj1R9u3BpiRPyNjgW5pac3OijgJ4y4zkZjFE8hR4AxO8aIlM1qsW6toc4RV3KVMBgvZgd0J2abDJq8ps2gWRhPQ7AyCbNRySzotFP4jZ8CilgEkTSg0CWLFICVAzSFgWoM4gmta5CjA90jatqwXRTReP3jhbmDw0eEMXrh1U9y9hEQ4Pno1xDJXLpri7VW33ML%2FsEOux5iPRPp%2ByO0CNZ8gqPB0K%2F3Qhi6%2FAnQ9O%2FArpoPzrJMaQW3yjEu6uYa57vWau7dVRSk6iI3IqjIJOblxTCcIuLLvhdA%3D%3D)

___

## Installation

1. Install wstool in order manage the packages inside the workspace

~~~
sudo apt install python-wstool
~~~

2. Set up catkin workspace with required packages

~~~
cd /path/to/catkin_ws 

wstool init src https://raw.githubusercontent.com/ros-industrial/workcell_explorer/kf_branch1/workcell_explorer.rosinstall

rosdep install --ignore-src --from-paths src
~~~

3. Finally, to build:

~~~
catkin build
~~~

4. Source the workspace 

~~~
source devel/setup.bash
~~~
___

## Usage

1. Launch Gazebo world + robot mounted with a Kinect camera

~~~
roslaunch myworkcell_support workcell_gazebo.launch 
~~~

2. Launch the MoveIt! planning execution

~~~
roslaunch myworkcell_moveit_config myworkcell_planning_execution.launch.xml
~~~

3. Launch the TSDF reconstruction node in the yak package

~~~
roslaunch yak launch_gazebo_robot.launch
~~~

4. Start the Octomap server 

~~~
roslaunch nbv_planner octomap_mapping.launch
~~~

5. Start the exploration process 

~~~
rosrun nbv_planner exploration_controller_node
~~~

6. ROS Service to extract mesh after deciding that the reconstruction is good enough.

~~~
rosservice call /get_mesh
~~~

**Note**- All these commands need to be run on a separate terminal. Run the `source devel/setup.bash` each time. 
___

## Phase 1- 27th March 2018- 10th June 2018

**Documentation**

1. **Blog post 1**: [Introduction to GSoC 2018 with ROS Industrial](https://aadityasaraiya.github.io//blog/2018/07/16/GSoC_2018_with_ROS_Industrial/)

___

## Phase 2- 11th June 2018- 9th July 2018 

**Documentation**

1. **Blog Post 2**: [Kinect Fusion for 3-D reconstruction- Part 1](https://aadityasaraiya.github.io//blog/2018/08/07/Kinect_Fusion_for_3-D_reconstruction_Part_1/)

2. **Blog Post 3**: [Kinect Fusion for 3-D reconstruction- Part 2](https://aadityasaraiya.github.io//blog/2018/08/08/Kinect_Fusion_for_3-D_reconstruction_Part_2/)

3. **Wiki 1**: [Summary of the 'KinectFusion: Real Time Dense Surface Mapping and Tracking' paper](https://github.com/ros-industrial/workcell_explorer/wiki/Summary-of-the-'KinectFusion:-Real-Time-Dense-Surface-Mapping-and-Tracking'-paper)

___

## Phase 3- 9th July 2018- 14th August 2018 

**Documentation**

4. **Blog Post 4**: [ROS Workcell Explorer Package Structure](https://aadityasaraiya.github.io//blog/2018/08/09/ROS_Workcell_Explorer_Package_Structure/)

5. **Blog Post 5**- [KinectFusion, NBV_planner and workcell exploration](https://aadityasaraiya.github.io//blog/2018/08/10/KinectFusion_NBV_planner_and_workcell_exploration/)
___

**Issues**

As this project involves different packages, there have been multiple issues created in separate repos. All the issues have been collected here in order to get an understanding on how some of the problems were tackled/solved. 
___

**workcell_explorer** repo

+ [Creating a new .rosinstall file](https://github.com/ros-industrial/workcell_explorer/issues/2)

+ [Octomap flipped](https://github.com/ros-industrial/workcell_explorer/issues/3)
___

**yak** repo

+ [tf2::LookupException](https://github.com/AustinDeric/yak/issues/18)

+ [Multiple octomap views generated and octomap flipped](https://github.com/AustinDeric/yak/issues/20)

+ [No robot motion after relaxing camera pose constraints](https://github.com/AustinDeric/yak/issues/21)
___

**gl_depth_sim** repo

+ [Use gl_depth_sim instead of Gazebo](https://github.com/Jmeyer1292/gl_depth_sim/issues/1)
___

**Limitations and Future work**

