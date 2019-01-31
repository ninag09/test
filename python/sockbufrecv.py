import socket
try:
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 1024)
    sadd = ("129.10.113.143",80)
    s = sock.connect(sadd)
    print sock
except:
    print "error"
#while(1):
 #       data = sock.recv(1024)
  #      print data

