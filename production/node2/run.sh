#!/bin/bash
source "/opt/ros/noetic/setup.bash" && source "/root/catkin_ws/devel/setup.bash"
export ROS_MASTER_URI=http://192.168.1.235:11311 #intel_nuc-server
export ROS_IP="$(hostname -I | cut -f1 -d' ')"
roslaunch firos_lidar_bringup lidar_bringup.launch x:=18.93 y:=3.54 z:=0 alpha:=1.57 beta:=0 gama:=0 node_name:=node_2
