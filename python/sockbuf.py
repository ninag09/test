import socket
import time

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF, 2048)
add = ("127.0.0.1",2000)
sock.bind(add)
sock.listen(5)

while(1):
    print "Started server with send buffer, ", sock.getsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF)
    s = sock.accept()
    print s
    sock.send("Hello")
    print 'sent'
    time.sleep(2)
