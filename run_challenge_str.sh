


source ~/carla/carla-autoware/catkin_ws/devel/setup.bash
echo "source catkin_ws ok"

source ~/carla/autoware.ai/install/setup.bash
echo "source autoware ok"

export TEAM_CODE_ROOT=~/carla/carla-autoware/autoware_launch
echo "export TEAM_CODE_ROOT"

export CARLA_MAPS_PATH=~/carla/carla-autoware/autoware_data/point_map
echo "export CARLA_MAPS_PATH"

export CARLA_AUTOWARE_ROOT=~/carla/carla-autoware
echo "export CARLA_AUTOWARE_ROOT"


#loop for the total runs of the assessment
for i in {1..5} 
do
    #loop for the 6 different weather conditions
    for k in {1..6} 
    do
        #declare route count variable
        declare -i route=1
        #loop for the 5 different routes
        for j in {1..5} 
        do
            export ROUTE_COUNT=$route
            echo "route -- " $ROUTE_COUNT

            echo "--change weather--"
            #publish weather change request
            rostopic pub -1 /carla_weather std_msgs/String "change" 

            echo "--run challenge--"
            #run challenge evaluator script with the current route
            python $ROOT_SCENARIO_RUNNER/srunner/challenge/challenge_evaluator_routes.py  \
                --scenarios=$CARLA_AUTOWARE_ROOT/challenge/Town02_traffic_scenarios1_3_4.json \
                --routes=$CARLA_AUTOWARE_ROOT/challenge/routes_str/Town02_routes_str_0$ROUTE_COUNT.xml \
                --agent=$CARLA_AUTOWARE_ROOT/challenge/AutowareRosAgent.py \
                --filename=$CARLA_AUTOWARE_ROOT/results/results.json \
                --debug=1 

            sleep 2

            echo "--save results--"
            #read results from json file into csv file
            python $CARLA_AUTOWARE_ROOT/results/read_results.py

            #set route count to the next route
            declare -i route=$route+1
        done
    done
done
