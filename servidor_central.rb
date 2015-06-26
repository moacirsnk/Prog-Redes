require 'socket'

serv_socket = UDPSocket.new
serv_socket.bind("",2100)
registro = 
loop{
	data, sender = serv_socket.recvfrom(1024)
	send_ip = sender[3]
	send_port = sender[1]
        dados = data.split('$')
	
        msg = "#{dados[0]} - #{dados[1]} - #{dados[2]}"
	puts data
	serv_socket.send(msg, 0, send_ip, send_port)
	break
}

