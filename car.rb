class Car
  attr_reader :colour, :model, :speed, :fuel_level, :driver, :passengers
  
  def initialize(colour, model, driver)
    @driver = driver
    @colour = colour
    @model = model
    @fuel_level = 100
    @speed = 0
    @passengers = []
  end

  def accelerate()
    @speed += 10
    @fuel_level -= 5
  end

  def brake()
    @speed -= 10
    if @speed < 0
      @speed = 0
    end
  end

  def pick_up_passengers(passenger)
    if @passengers.length < 4
      @passengers << passenger
    else
      return "Sorry, I'm full!"
    end
  end

  def currently_riding
    return @passengers.length
  end


end