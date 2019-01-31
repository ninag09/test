#!/usr/bin/python

import sys
import socket
import subprocess

class DnsException(Exception):      # Define DNS Exception
    def __init__(self, arg):
        self.msg = arg

if len(sys.argv) != 3:              # Check number of arguments
    print "Invalid Arguments!!"
    print "Usage: network.py IpAddr1 IpAddr2"
    sys.exit(1)

def isIpv4Valid(addr):              # Func to check IPv4 address validity
    try:
        socket.inet_pton(socket.AF_INET,addr)
    except socket.error:
        return False
    return True

def isIpv6Valid(addr):              # Func to check IPv6 address validity
    try:
        socket.inet_pton(socket.AF_INET6,addr)
    except socket.error:
        return False
    return True

def checkIpAddress(addr):
    if isIpv4Valid(addr):
        return True
    else:
        return isIpv6Valid(addr)

for arg in range (1,len(sys.argv)):         # Check input IP Addresses
    if not checkIpAddress(sys.argv[arg]):   # validity. Exit if syntax
        print "Invalid IP Address",arg      # is wrong
        sys.exit(1)

# Given IP's are vaild continue 
ipAddr1 = sys.argv[1]
ipAddr2 = sys.argv[2]

command1 = "nslookup %s" % ipAddr1          # nslookup command on IP1
print "IP Address :",ipAddr1

p = subprocess.Popen(command1,shell=True,stdout=subprocess.PIPE,\
stderr=subprocess.PIPE)
text = p.stdout.read()
retcode = p.wait()
data = text.split()
found = False

try:
    for i in range (0,len(data)):   # Hostname found print it
        if data[i] == 'name':
            print "Hostname   :", text.split('name = ',1)[1].split()[0]
            found = True
            break

    if not found:                   # Hostname not found raise exception
        raise DnsException ("Exception Raised")

except DnsException, excp:
    print excp.msg

if isIpv6Valid(ipAddr2):
    command2 = "ping6 %s -c 3" % ipAddr2   # ping6 command on IP2
else:
    command2 = "ping %s -c 3 -W 5" % ipAddr2    # ping command on IP2
print "IP Address :",ipAddr2

p = subprocess.Popen(command2,shell=True,stdout=subprocess.PIPE,\
stderr=subprocess.PIPE)
text = p.stdout.read()
retcode = p.wait()
data = text.split()
found = False

for i in range (0,len(data)):   # No reply received mark status DOWN
    if data[i] == "100%" or data[i] == '100.0%' or data[i] == '':
        print "Status     : DOWN"
        found = True
        break

if not found:                   # Reply received mark status UP
    print "Status     : UP"

