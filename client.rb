require 'socket'
puts "Client Side File Sharing"
puts "Choose an option"
s = TCPSocket.new("", 8686)

loop do
  #send request to create tracker
    s.send "<createtracker filename filesize description md5 ipaddres portnumber>"
  #send request to update tracker
    s.send "<updatetracker filename startbytes endbytes>"
  #request list of all trackers
    s.send "<REQ list>"
  #request server to send file
    s.send "<GET filename>
end
