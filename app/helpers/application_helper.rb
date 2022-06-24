module ApplicationHelper

  def format_time(datetime)
    datetime.strftime("%H:%M:%S")
  end

  def format_time_short(datetime)
    datetime.strftime("%H:%M")
  end

  def display_ip_address
    ip_adrress = request.remote_ip
  end

end
