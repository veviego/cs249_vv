#!/usr/bin/env python
# Adapted from ROS tutorials
import rospy
from rostls.msg import Greeting

def talker():
    pub = rospy.Publisher('welcome', Greeting, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        greeting = "Salvete omenes! (%s)" % rospy.get_time()
        rospy.loginfo(greeting)
        pub.publish(greeting)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
