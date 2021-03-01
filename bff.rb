require 'socket'

server = 'irc.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname_1 = 'SuperAwesomeBot'
nickname_2 = 'missjferrari'
channel = '#champagne_code'

socket.puts "NICK #{nickname_1}"
socket.puts "USER #{nickname_1} 0 * #{nickname_1}"
socket.puts "JOIN #{channel}"

socket.puts "PRIVMSG #{channel} :I want to be your BFF!"

while message = socket.gets do
    puts message
    if nickname_1.match("SuperAwesomeBot")
        File.write('bff.txt', nickname_1)
    end
    if nickname_2.match("missjferrari")
        File.write('me.txt', nickname_2)
    end
    if message.match("Who is your BFF?")
        gets = File.read('me.txt')
        socket.puts "PRIVMSG #{channel} :#{gets}"
    end
end