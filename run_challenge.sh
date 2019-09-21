


source ~/carla-autoware/catkin_ws/devel/setup.bash
echo "source catkin_ws ok"

source ~/autoware.ai/install/setup.bash
echo "source autoware ok"

export TEAM_CODE_ROOT=~/carla-autoware/autoware_launch
echo "export TEAM_CODE_ROOT"

export CARLA_MAPS_PATH=~/carla-autoware/autoware_data/point_map
echo "export CARLA_MAPS_PATH"

export CARLA_AUTOWARE_ROOT=~/carla-autoware/autoware_launch
echo "export CARLA_AUTOWARE_ROOT"

echo "--run challenge--"
python $ROOT_SCENARIO_RUNNER/srunner/challenge/challenge_evaluator_routes.py  \
    --scenarios=/home/carla/carla-autoware/challenge/Town02_traffic_scenarios1_3_4.json \
    --routes=/home/carla/carla-autoware/challenge/Town02_route_01.json \
    --agent=/home/carla/carla-autoware/challenge/AutowareRosAgent.py \
    --filename=/home/carla/carla-autoware/autoware_launch/results.json \
    --debug=1 
