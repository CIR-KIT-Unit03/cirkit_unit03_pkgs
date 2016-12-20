#!/bin/bash

showHelp() {
    echo 
    echo "usege: install.sh [-h] [-i] [-t] [-r]"
    echo 
    echo "Clone all pacakges specifically related do CIR-KIT-Unit03."
    echo "Packages to be cloned are defined in cirkit_unit03_pkgs.rosinstall."
    echo 
    echo "Basical packages for CIR-KIT-Unit03 are cloned into cirkit_unit03_pkgs directory."
    echo "Dependent packages for CIR-KIT-Unit03 are cloned into cirkit_unit03_deps directory."
    echo 
    echo "Directory configuration after install is supposed to be as follows."
    echo "  <catkin_ws>"
    echo "  |"
    echo "  |- src"
    echo "     |"
    echo "     |- cirkit_unit03_deps (Just a directory, not a metapacage)"
    echo "     |   |"
    echo "     |   |- (dependent pkgs cloned via cirkit_unit03_pkgs.rosinstall)"
    echo "     |"
    echo "     |- cirkit_unit03_pkgs"
    echo "         |"
    echo "         |- (basical pkgs cloned via cirkit_unit03_pkgs.rosinstall)"
    echo 
    echo "optional arguments:"
    echo " -h           show this help message and exit"
    echo " -i           eneble rosdep init"
    echo " -t           enable catkin_make run_tests"
    echo " -r           remove existing src/.rosinstall"
}

# Option -t enables test
while getopts hirt OPT
do
  case $OPT in
    "h" ) showHelp
          exit 0 ;;
    "i" ) FLG_I="TRUE" ;;
    "r" ) FLG_R="TRUE" ;;
    "t" ) FLG_T="TRUE" ;;
      * ) echo "Usage: $CMDNAME [-h -i -t]" 1>&2
          exit 1 ;;
  esac
done

# Download required packages by wstool.
cd ../../
if [ "$FLG_R" = "TRUE" ]; then
  echo "Removing src/.rosinstall"
  rm src/.rosinstall
fi
wstool init src
wstool merge -t src src/cirkit_unit03_pkgs/cirkit_unit03_pkgs.rosinstall
wstool update -t src

# Download depended packages by rosdep.
if [ "$FLG_I" = "TRUE" ]; then
  sudo rosdep init
fi
rosdep update
rosdep install -i -r -y --from-paths src --ignore-src

# Build packages, and set the path for the packages.
catkin_make
source devel/setup.bash


if [ "$FLG_T" = "TRUE" ]; then
  catkin_make run_tests
  catkin_test_results
fi
