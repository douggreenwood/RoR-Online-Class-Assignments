class Timer
  attr_accessor:seconds

  def initialize(value = 0)
    @seconds = value
  end
  
  def seconds= (value)
    @seconds = value
   end

  def time_string
    time_left=@seconds
    #determine hours
    hh = (time_left / 3600).floor.to_s
    hh = hh.insert(0, "0") unless hh.to_i > 9

    #grab remainins minutes
    time_left = time_left%3600

    mm = (time_left / 60).floor.to_s
    mm = mm.insert(0, "0") unless mm.to_i > 9

   #time_left should be remaining seconds
    ss = (time_left%60).to_s
    ss = ss.insert(0, "0") unless ss.to_i > 9

    @value = hh + "|" + mm + "|" + ss
  end

end