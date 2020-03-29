class Journey
  def initialize(destination, mode_of_transport = Walk)
    @destination = destination
    @mode_of_transport = mode_of_transport.new
  end

  def start
    @mode_of_transport.start(@destination)
  end

  def finish
    @mode_of_transport.finish(@destination)
  end
end

class Walk
  def start(destination)
    "You start walking towards #{destination}."
  end

  def finish(destination)
    "You stop walking, as you have arrived at #{destination}."
  end
end

class Car
  def start(destination)
    "You turn the ignition on and start driving towards #{destination}."
  end

  def finish(destination)
    "You park up, as you have arrived at #{destination}."
  end
end
