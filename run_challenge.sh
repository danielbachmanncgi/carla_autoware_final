


source ~/carla-autoware/catkin_ws/devel/setup.bash
echo "source catkin_ws ok"

source ~/autoware.ai/install/setup.bash
echo "source autoware ok"

export TEAM_CODE_ROOT=~/carla-autoware/autoware_launch
echo "export TEAM_CODE_ROOT"

export CARLA_MAPS_PATH=~/carla-autoware/autoware_data/point_map
echo "export CARLA_MAPS_PATH"

export CARLA_AUTOWARE_ROOT=~/carla-autoware
echo "export CARLA_AUTOWARE_ROOT"


for i in {1..5}
do
    echo "--change weather--"
    rostopic pub -1 /carla_weather std_msgs/String 'change' 

    echo "--run challenge--"
    python $ROOT_SCENARIO_RUNNER/srunner/challenge/challenge_evaluator_routes.py  \
        --scenarios=$CARLA_AUTOWARE_ROOT/challenge/Town02_traffic_scenarios1_3_4.json \
        --routes=$CARLA_AUTOWARE_ROOT/challenge/Town02_route_01.json \
        --agent=$CARLA_AUTOWARE_ROOT/challenge/AutowareRosAgent.py \
        --filename=$CARLA_AUTOWARE_ROOT/results/results.json \
        --debug=1 

    sleep 2

    echo "--save results--"
    python $CARLA_AUTOWARE_ROOT/results/read_results.py
done
