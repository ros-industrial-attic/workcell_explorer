**Google Summer of Code 2018 - Robot Workcell Discovery**

Repository for GSoC 2018 focusing on creation of a ROS package for Robotic Workcell exploration. The project is being done under the mentorship of Levi Armstrong and Alex Goins from [SwRI](https://www.swri.org/) and [ROS Industrial](https://rosindustrial.org/).
___

## Relevant Links

1. [Accepted projects under OSRF for GSoC 2018](https://summerofcode.withgoogle.com/organizations/5366449791565824/)

2. [Abstract for project on Robot WorkCell Discovery](https://summerofcode.withgoogle.com/projects/#6587806298669056)

3. [Initial Project Proposal](https://storage.googleapis.com/summerofcode-prod.appspot.com/gsoc/core_project/doc/6641891613868032_1522157594_GSoc_2018_Proposal-_Robot_Work_Cell_Discovery.pdf?Expires=1529053304&GoogleAccessId=summerofcode-prod%40appspot.gserviceaccount.com&Signature=U2SgVkEN%2FIxaRq4FF6QqIs2S5WvuqGawtN6QJQAYX0ONSLfyFtBVDj1R9u3BpiRPyNjgW5pac3OijgJ4y4zkZjFE8hR4AxO8aIlM1qsW6toc4RV3KVMBgvZgd0J2abDJq8ps2gWRhPQ7AyCbNRySzotFP4jZ8CilgEkTSg0CWLFICVAzSFgWoM4gmta5CjA90jatqwXRTReP3jhbmDw0eEMXrh1U9y9hEQ4Pno1xDJXLpri7VW33ML%2FsEOux5iPRPp%2ByO0CNZ8gqPB0K%2F3Qhi6%2FAnQ9O%2FArpoPzrJMaQW3yjEu6uYa57vWau7dVRSk6iI3IqjIJOblxTCcIuLLvhdA%3D%3D)

___

## Installation

1. Install wstool in order manage the repos inside the workspace

~~~
sudo apt install python-wstool
~~~

2. Set up catkin workspace with required packages

~~~
cd /path/to/catkin_ws 
wstool init src https://raw.githubusercontent.com/ros-industrial/workcell_explorer/master/workcell_explorer.rosinstall
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

___

## Current Issues/ Pending tasks 

1. **Flipped Octomap**

+ Problem- Octomap is flipped 90 degrees with respect to the view of the Kinect. 
+ Potential solution- Issues with the URDF file. 


2. Add .rosinstall file instead of submodules [DONE]
___

## Upcoming Tasks

1. Integrate the [yak](https://github.com/AustinDeric/yak) library with the workflow. YAK library uses Kinect fusion with Truncated Signed Distance Fields(TSDFs) used for created a probabilistic representation of solid surfaces in 3-D space [DONE]. 

    1. Integrate reconstruction node and octomap server node with given package.[DONE] 
    2. Integrate the `exploration_controller_node` with the given package [DONE].  


2. Utilise the [gl_depth_sim package](https://github.com/Jmeyer1292/gl_depth_sim) to simulate organised depth camera data and test out the YAK package on the collected data. 

+ This is to avoid all problems regarding flipped octomaps which could be primarily created due to Gazebo and the way it represents simulated objects. 

___

## Documentation tasks

1. Create a blog post to talk about GSoC in general and introduce the Robot WorkCell Exploration project. 

+ [Link to blog post](https://aadityasaraiya.github.io//blog/2018/07/16/GSoC_2018_with_ROS_Industrial/)

2. Create a blog post to summarise Kinect fusion and mention how it's going to be used with TSDF for the project using [yak](https://github.com/AustinDeric/yak) library. Explain the use of the `nbv_planner` and the `exploration_node` files for the process of workcell exploration.

