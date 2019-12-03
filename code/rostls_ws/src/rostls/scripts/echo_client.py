#!/usr/bin/env python
# Adapted from ROS tutorials

import sys
import rospy
from rostls.srv import *

def echo_client(msg):
    rospy.wait_for_service('echo')
    try:
        echo = rospy.ServiceProxy('echo', Echo)
        response = echo(msg)
        return response.response
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def usage():
    return "Usage: %s msg"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        msg = sys.argv[1]
    else:
        print usage()
        sys.exit(1)

    i = 0
    while i < 100: 
        print "Sending: %s"%(msg)
        print "Received: %s "%(echo_client(msg))
        i += 1
