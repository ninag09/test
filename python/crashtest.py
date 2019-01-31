#!/usr/bin/python

import socket
import pickle

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
#msg = pickle.dumps("127.0.0.1")
addr = ("127.0.0.1",9090)

sock.sendto("msg",addr)
