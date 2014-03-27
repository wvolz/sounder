require 'socket'

module ApplicationHelper

  def format_time(datetime)
    datetime.strftime("%H:%M:%S")
  end

  def format_time_short(datetime)
    datetime.strftime("%H:%M")
  end

  def display_ip_address
    ip_address = Socket.getaddrinfo(Socket.gethostname, 3000)
    ip_address[0][2]
  end

end
