require 'socket'

cliente_socket = UDPSocket.new
cliente_socket.connect('localhost', 2100)
loop{
  ip = gets.chomp
  dominio = gets.chomp
  msg = "REG$#{dominio}$#{ip}"
  cliente_socket.puts msg
  puts cliente_socket.gets
}
