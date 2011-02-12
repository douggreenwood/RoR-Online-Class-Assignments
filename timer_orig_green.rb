class Timer
  def initialize
  end
  
  def seconds(timer_value = 0)
    @timer_value = timer_value
  end

  def seconds= (timer_value = 0)
    @timer_value = timer_value
  end

  def time_string
    time_left=@timer_value
    #determine hours
    hours = time_left / 3600.floor
    if hours >= 1 then
      #grab remainins minutes
      time_left = time_left%3600
    end
    
    minutes = time_left / 60.floor
    if minutes >= 1 then
      #grab remainins seconds
      time_left = time_left%60
    end
   #time_left should be remaining seconds
    seconds = time_left
      
    if hours < 10 then
    hh = "0" + hours.to_s.rjust(1)
    else
        hh = hours.to_s
    end

    if minutes < 10 then
        mm = "0" + minutes.to_s.rjust(1)
    else
        mm = minutes.to_s
    end
 
    if seconds < 10 then
      ss =  "0" + seconds.to_s.rjust(1)
    else
        ss = seconds.to_s
    end
    @timer_value = hh + "|" + mm + "|" + ss
  end


end