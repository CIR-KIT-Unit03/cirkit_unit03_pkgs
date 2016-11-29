# cirkit_unit03_pkgs [![Build Status](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_pkgs.svg?branch)](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_pkgs) [![Slack](https://img.shields.io/badge/Slack-CIR--KIT-blue.svg)](http://cir-kit.slack.com/messages/unit03)
Package description for CIR-KIT-Unit03.

## About
This repository provides follow packages.
Supported ROS version is **Indigo**.

#### Basical packages for CIR-KIT-Unit03
- [cirkit_unit03_amcl](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_amcl)
- [cirkit_unit03_bringup](https://github.com/CIR-KIT-Unit03/cirkit_unit03_robot/tree/master/cirkit_unit03_bringup)
- [cirkit_unit03_contorol](https://github.com/CIR-KIT-Unit03/cirkit_unit03_common/tree/master/cirkit_unit03_control)
- [cirkit_unit03_description](https://github.com/CIR-KIT-Unit03/cirkit_unit03_common/tree/master/cirkit_unit03_description)
- [cirkit_unit03_desktop](https://github.com/CIR-KIT-Unit03/cirkit_unit03_desktop/tree/master/cirkit_unit03_desktop)
- [cirkit_unit03_driver](https://github.com/CIR-KIT-Unit03/cirkit_unit03_robot/tree/master/cirkit_unit03_driver)
- [cirkit_unit03_gazebo](https://github.com/CIR-KIT-Unit03/cirkit_unit03_simulator/tree/master/cirkit_unit03_gazebo)
- [cirkit_unit03_gmapping](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_gmapping)
- [cirkit_unit03_move_base](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_move_base)
- [cirkit_unit03_navigation](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_navigation)
- [cirkit_unit03_viz](https://github.com/CIR-KIT-Unit03/cirkit_unit03_desktop/tree/master/cirkit_unit03_viz)

#### Dependent packages for CIR-KIT-Unit03
- [steer_drive_ros](https://github.com/CIR-KIT/steer_drive_ros)
- [ira_laser_tools](https://github.com/AriYu/ira_laser_tools/tree/fix-eigen3cmake)

---
## Installation
##### 1. Create **catkinized**  workspace.
##### 2. Clone this repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_pkgs.git
```
##### 3. Download required packages by wstool.
```bash
$ cd <catkin_ws>
$ wstool init src
$ wstool merge -t src src/cirkit_unit03_pkgs/cirkit_unit03_pkgs.rosinstall
$ wstool update -t src
```
##### 4. Download depended packages by rosdep.
```bash
$ cd <catkin_ws>
$ rosdep install -i -r -y --from-paths src --ignore-src
```
##### 5. Build packages, and set the path for the packages.
```bash
$ cd <catkin_ws>
$ catkin_make
$ source devel/setup.bash
```
