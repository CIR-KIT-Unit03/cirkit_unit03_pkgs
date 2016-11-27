# cirkit_unit03_pkg
Package description for CIR-KIT-Unit03.

## About
This repository provides follow packages.
- cirkit_unit03_amcl
- cirkit_unit03_bringup
- cirkit_unit03_contorol
- cirkit_unit03_description
- cirkit_unit03_desktop
- cirkit_unit03_gazebo
- cirkit_unit03_gmapping
- cirkit_unit03_move_base
- cirkit_unit03_navigation
- cirkit_unit03_viz

These packages supports Indigo version.

## Installation
1. Create *catkinized*  workspace.
2. Clone this repository.
   ```bash
   $ cd <catkin_ws>/src
   $ git clone https//github.com/CIR-KIT-Unit03/cirkit_unit03_pkg.git
   ```
3. Download required packages by wstool.
   ```bash
   $ cd <catkin_ws>
   $ wstool init src
   $ wstool merge -t src src/cirkit_unit03_pkg/cirkit_unit03_pkg.rosinstall
   $ wstool update -t src
   ```
4. Download depended packages by rosdep.
   ```bash
    $ cd <catkin_ws>
    $ rosdep install -i -r -y --from-paths src --ignore-src
   ```
5. Build packages, and set the path for the packages.
   ```bash
   $ cd <catkin_ws>
   $ catkin_make
   $ source devel/setup.bash
   ```
