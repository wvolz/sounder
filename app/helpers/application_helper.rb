module ApplicationHelper

  def format_time(datetime)
    datetime.strftime("%H:%M:%S")
  end

end
