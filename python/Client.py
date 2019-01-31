#!/usr/bin/python

import sys
import thread
import argparse
import socket
import pickle

class Socket:
    def __init__(self, buff=''):
        self.buff = buff
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            print 'created'
        except:
            print "Socket Creation Failed!"
            sys.exit(1)

    def send(self, destAddr, data):
        try:
            self.buff = pickle.dumps(data)
            self.sock.sendto(self.buff, self.destAddr)
        except:pass

    def recv(self, size):
        try:
            recvAddr, self.buff = self.sock.recvfrom(size)
            if recvAddr == clientAddr:
                return pickle.loads(self.buff)
        except:
            print "Server Not Reachable"

    def timeout(self, time):
        self.sock.timeout(time)

def isCommand(cmd):
    permittedCommands = ['list', 'send', 'quit']
    if cmd[0] in permittedCommands:return True
    print "+> Invalid Command"
    return False

def handleCommand(cmd):
    if cmd[0] is 'list':handleList(cmd)
    elif cmd[0] is 'send' :handleSend(cmd)
    elif cmd[0] is 'quit' :handleQuit(cmd)

def main():
    commandSock = Socket()
    print "Socket Created"

    while(True):
        cmd = raw_input('+> ').split()

        if not (len(cmd) and isCommand(cmd)):continue
        handleCommand(cmd)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print " Terminating Client"
        sys.exit(0)
