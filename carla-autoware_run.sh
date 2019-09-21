#execute the carla-autoware ros bridge

export CARLA_AUTOWARE_ROOT=~/carla-autoware/autoware_launch
export CARLA_MAPS_PATH=~/carla-autoware/autoware_data/maps
export PYTHONPATH=$PYTHONPATH:~/CARLA_0.9.5/PythonAPI/carla/dist/carla-0.9.5-py2.7-linux-x86_64.egg:~/CARLA_0.9.5/PythonAPI/carla

source ~/carla-autoware/catkin_ws/devel/setup.bash
source ~/autoware.ai/install/setup.bash

roslaunch $CARLA_AUTOWARE_ROOT/devel.launch
