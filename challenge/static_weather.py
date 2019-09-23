#!/usr/bin/env python

# Copyright (c) 2019 Computer Vision Center (CVC) at the Universitat Autonoma de
# Barcelona (UAB).
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.

"""
CARLA Dynamic Weather:

Connect to a CARLA Simulator instance and control the weather. Change Sun
position smoothly with time and generate storms occasionally.
"""

import glob
import os
import sys
import rospy
from std_msgs.msg import String

try:
    sys.path.append(glob.glob('../carla/dist/carla-*%d.%d-%s.egg' % (
        sys.version_info.major,
        sys.version_info.minor,
        'win-amd64' if os.name == 'nt' else 'linux-x86_64'))[0])
except IndexError:
    pass

import carla

import argparse
import math

class Counter():
    def __init__(self):
        self.count = 1

def change_weather(data):
    print("change requested")
    set_weather()

def set_weather():
    weahter_dict = {
        1 : carla.WeatherParameters.ClearNoon,
        2 : carla.WeatherParameters.CloudyNoon,
        3 : carla.WeatherParameters.WetNoon,
        4 : carla.WeatherParameters.WetCloudyNoon,
        5 : carla.WeatherParameters.MidRainyNoon,
        6 : carla.WeatherParameters.HardRainNoon,
        7 : carla.WeatherParameters.SoftRainNoon,
        8 : carla.WeatherParameters.ClearSunset,
        9 : carla.WeatherParameters.WetSunset,
        10 : carla.WeatherParameters.MidRainSunset,
        11 : carla.WeatherParameters.HardRainSunset,
        12 : carla.WeatherParameters.SoftRainSunset,
    }
    
    print("request recieved")
    print("count: ", count.count)
    client = carla.Client("127.0.0.1", 2000)
    client.set_timeout(2.0)
    world = client.get_world()
    world.set_weather(weahter_dict[count.count])
    print("set weather to")
    print(weahter_dict[count.count])

    if count.count < 12:
        count.count = count.count + 1
    else:
        count.count = 1
    

def setup():
    rospy.Subscriber("carla_weather", String, change_weather)
    global count
    count = Counter()


def main():
    rospy.init_node("carla_weather")
    setup()

    rospy.spin()

                 




if __name__ == '__main__':

    main()
