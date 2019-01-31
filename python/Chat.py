#!/usr/bin/python

import sys
import thread
import argparse
import socket
import pickle
import signal
import subprocess

def signal_handler (signal, frame):
    print " Terminating Client Process..."
    sock.close()
    sys.exit(1)

signal.signal(signal.SIGINT, signal_handler)

parser = argparse.ArgumentParser()
parser.add_argument('-u', '--username', required='True', help="Enter your Username")
parser.add_argument('-sip', '--server_ip', required='True', help="Enter Server IP")
parser.add_argument('-sp', '--server_port', type=int, required='True', help="Server Port to Bind")

args = parser.parse_args()
addr = (args.server_ip, args.server_port)
data = ('SIGN-IN', args.username)
buff = pickle.dumps(data)

try:
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(buff, addr)
    sock.settimeout(5)
    sock.recv(1)
    sock.settimeout(None)
except:
    print "Server Not Reachable"
    sock.close()
    sys.exit(1)

def isCommand (cmd):
    if (len(cmd) == 1 and cmd[0] == 'list') or\
        (len(cmd) > 1 and cmd[0] == 'send'):
        return True
    if len(cmd) == 1 and cmd[0] == 'send':
        print "+> Invalid Command, Specify Username! 'send username message' "
    else:
        print "+> Invalid Command, Enter 'list' to see signed in users "
    return False

def client_commands (user, addr):
    commandSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    while True:
        cmd = raw_input('+> ')
        command = cmd.split()
        if not (len(command) and isCommand(command)):continue
        if command[0] == 'list': reqmsg = ('LIST', user)
        else: reqmsg = ('MESSAGE', user, command[1])
        buf = pickle.dumps(reqmsg)
        try:
            commandSock.sendto(buf, addr)
            commandSock.settimeout(2)
            userdata =  pickle.loads(commandSock.recv(1024))
        except:
            print "+> Server Not Reachable"
            continue
        if command[0] == 'list':
            print '<- Signed-In Users:',
            for numOfUsers in range (0,len(userdata)):
                if numOfUsers != len(userdata)-1 : print userdata[numOfUsers]+',',
            print userdata[numOfUsers]
        else:
            msgToClient = (user,cmd.split(command[1])[1])
            if userdata:
                commandSock.sendto(pickle.dumps(msgToClient), userdata)
            else:print"<- User not Found"
try:
    thread.start_new_thread (client_commands, (args.username, addr, ))
except:
    print "Error: Unable to start thread"
    sys.exit(1)

def printMessage(msg,address):
    sys.stdout.write('\n'+'<- <From '+str(address[0])+':'+str(address[1])\
    +':'+msg[0]+'>:'+msg[1]+'\n'+'+> ')
    sys.stdout.flush()

while(True):
    try:
        message, address = sock.recvfrom(1024)
        msg = pickle.loads(message)
        printMessage(msg,address)
    except KeyboardInterrupt:
        sys.exit(1)
    except:pass
