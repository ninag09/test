#!/usr/bin/python
import sys
import argparse
import socket
import signal
import pickle
import SocketServer
# Signal handler to cath Interrupts
def signal_handler (signal, frame):
    print " Shutting down server..."
    sock.close()
    sys.exit(1)
signal.signal(signal.SIGINT, signal_handler)

# Parser to read the arguments
parser = argparse.ArgumentParser()
parser.add_argument('-sp', '--server_port', type=int,  required='True', help="Server Port to Bind")

# Parse the arguments and check for validity
args = parser.parse_args()
if args.server_port and args.server_port > 65535:
    print "Invalid Port! Terminating Server"
    sys.exit(1)

# Create socket and Bind
try:
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.bind(('',args.server_port))
    sock.listen(5)
except:
    print "Bind Failed"
    sys.exit(1)

while(True):pass
