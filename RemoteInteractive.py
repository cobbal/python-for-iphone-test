import code, socket, sys

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
for port in range(5000, 5010):
    try:
        server_socket.bind(('', 5000))
        break
    except socket.error:
        pass
server_socket.listen(1)
client_socket, address = server_socket.accept()
print 'I got a connection from ', address

_stdout, _stderr = sys.stdout, sys.stderr

socketFile = client_socket.makefile('rw')
sys.stdout = sys.stderr = socketFile

def socket_input(prompt):
    socketFile.write(prompt)
    socketFile.flush()
    return socketFile.readline()

try:
    code.interact(readfunc=socket_input)
finally:
    client_socket.close()
