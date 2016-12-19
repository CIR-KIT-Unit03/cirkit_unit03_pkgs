#!/bin/bash

# Download required packages by wstool.
cd ../../
wstool init src
wstool merge -t src src/cirkit_unit03_pkgs/cirkit_unit03_pkgs.rosinstall
wstool update -t src

# Download depended packages by rosdep.
#sudo rosdep init
#rosdep update
rosdep install -i -r -y --from-paths src --ignore-src

# Build packages, and set the path for the packages.
catkin_make
source devel/setup.bash

# Option -t enables test
while getopts t OPT
do
  case $OPT in
    "t" ) FLG_T="TRUE" ;;
      * ) echo "Usage: $CMDNAME [-t]" 1>&2
          exit 1 ;;
  esac
done

if [ "$FLG_T" = "TRUE" ]; then
  catkin_make run_tests
  catkin_test_results
fi
