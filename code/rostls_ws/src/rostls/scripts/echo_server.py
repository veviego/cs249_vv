#!/usr/bin/env python
# Adapted from ROS tutorials

import rospy
from rostls.srv import *

def handle_call(req):
    print "Received %s"%(req.call)
    return EchoResponse(req.call)

def add_two_ints_server():
    rospy.init_node('echo_server')
    s = rospy.Service('echo', Echo, handle_call)
    print "Ready to echo."
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()
