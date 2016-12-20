# cirkit_unit03_pkgs [![Build Status](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_pkgs.svg?branch)](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_pkgs) [![Slack](https://img.shields.io/badge/Slack-CIR--KIT-blue.svg)](http://cir-kit.slack.com/messages/unit03)
The container reposigory for all packages specifically related to CIR-KIT-Unit03.

For CIR-KIT-Unit03 instructions and tutorials, please see http://wiki.ros.org/Robots/CIR-KIT-Unit03.

## About
This repository provides following packages.
Supported ROS version is **Indigo**.

#### Basical packages for CIR-KIT-Unit03
- [cirkit_unit03_common](https://github.com/CIR-KIT-Unit03/cirkit_unit03_common)
  - [cirkit_unit03_contorol](https://github.com/CIR-KIT-Unit03/cirkit_unit03_common/tree/master/cirkit_unit03_control)
  - [cirkit_unit03_description](https://github.com/CIR-KIT-Unit03/cirkit_unit03_common/tree/master/cirkit_unit03_description)
- [cirkit_unit03_navigation](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation)
  - [cirkit_unit03_amcl](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_amcl)
  - [cirkit_unit03_gmapping](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_gmapping)
  - [cirkit_unit03_maps](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_maps)
  - [cirkit_unit03_move_base](https://github.com/CIR-KIT-Unit03/cirkit_unit03_navigation/tree/master/cirkit_unit03_move_base)
- [cirkit_unit03_robot](https://github.com/CIR-KIT-Unit03/cirkit_unit03_robot)
  - [cirkit_unit03_bringup](https://github.com/CIR-KIT-Unit03/cirkit_unit03_robot/tree/master/cirkit_unit03_bringup)
  - [cirkit_unit03_driver](https://github.com/CIR-KIT-Unit03/cirkit_unit03_robot/tree/master/cirkit_unit03_driver)
- [cirkit_unit03_simulator](https://github.com/CIR-KIT-Unit03/cirkit_unit03_simulator)
  - [cirkit_unit03_gazebo](https://github.com/CIR-KIT-Unit03/cirkit_unit03_simulator/tree/master/cirkit_unit03_gazebo)

#### Dependent packages for CIR-KIT-Unit03
- [ira_laser_tools](https://github.com/AriYu/ira_laser_tools/tree/fix-eigen3cmake)
- [lower_step_detector](https://github.com/CIR-KIT/lower_step_detector)
- [steer_drive_ros](https://github.com/CIR-KIT/steer_drive_ros)
  - [steer_bot_hardware_gazebo](https://github.com/CIR-KIT/steer_drive_ros/tree/master/steer_bot_hardware_gazebo)
  - [steer_drive_controller](https://github.com/CIR-KIT/steer_drive_ros/tree/master/steer_drive_controller)
  - [stepback_and_steerturn_recovery](https://github.com/CIR-KIT/steer_drive_ros/tree/master/stepback_and_steerturn_recovery)


---
## Installation
### From install script
##### 1. Create **catkinized**  workspace.
##### 2. Clone this repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_pkgs.git
```

##### 3. Run install script.
- Without test
```bash
$ cd <catkin_ws>/src/cirkit_unit03_pkgs
$ sh install.sh
```

- With test
```bash
$ cd <catkin_ws>/src/cirkit_unit03_pkgs
$ sh install.sh -t
```

### From command line
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

---
## Directory configuration after Installation

```
<catkin_ws>
│
└ src
   │
   ├ cirkit_unit03_deps (Just a directory, not a metapacage)
   │   |
   |   ├ ira_laser_tools (Cloned via cirkit_unit03_pkgs.rosinstall)
   │   |
   |   ├ lower_step_detector (Cloned via cirkit_unit03_pkgs.rosinstall)
   │   |
   │   └ steer_drive_ros (Cloned via cirkit_unit03_pkgs.rosinstall)
   │
   └ cirkit_unit03_pkgs
       |
       ├ cirkit_unit03_pkgs (Metapackage)
       |
       ├ cirkit_unit03_common (Cloned via cirkit_unit03_pkgs.rosinstall)
       |
       ├ cirkit_unit03_navigation (Cloned via cirkit_unit03_pkgs.rosinstall)
       |
       ├ cirkit_unit03_robot (Cloned via cirkit_unit03_pkgs.rosinstall)
       |
       └ cirkit_unit03_simulator (Cloned via cirkit_unit03_pkgs.rosinstall)
```
