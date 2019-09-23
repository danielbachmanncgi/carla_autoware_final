#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def main():
    print("test")
    rospy.init_node("change_carla_weather")
    print("ini node done")
    pub = rospy.Publisher("carla_weather", String, queue_size=10)

    change_request = "1"
    print("pre sleep")
    
    print("post sleep")
    pub.publish(change_request)
    print("send request")
    

if __name__ == '__main__':
    main()