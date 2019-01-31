#!/usr/bin/python

import thread
import time
import socket
import select

def print_time( threadName, delay):
    count = 0
    while count < 50:
        wr.send("Hello ")
        w.send("World")
        time.sleep(delay)
        count += 1
        print "%s: %s" % ( threadName, time.ctime(time.time()) )

# Create two threads as follows
try:
    thread.start_new_thread( print_time, ("Thread-1", 2, ) )
    thread.start_new_thread( print_time, ("Thread-2", 4, ) )
except:
    print "Error: unable to start thread"

re, wr = socket.socketpair()
r, w = socket.socketpair()

read = [re,r]

while 1:

    read, write, exp = select.select(read,[],[])

    for event in read:
        print event.recv(1024)
