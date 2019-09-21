#!/usr/bin/env python

import rospy
from autoware_msgs.msg import VehicleCmd

def control ():


    pub = rospy.Publisher('/vehicle_cmd', VehicleCmd)
    rospy.init_node('fake_control')
    

    while not rospy.is_shutdown():
        control = VehicleCmd()
        control.steer_cmd.steer = 0
        control.accel_cmd.accel = 10
        control.brake_cmd.brake = 0
        rospy.loginfo(control)
        pub.publish(control)

    rospy.spin()

if __name__ == '__main__':
    try:
        control()
        
    except rospy.ROSInterruptException:
        pass