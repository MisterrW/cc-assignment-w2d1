require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../car')
require_relative('../person')

class CarTest < Minitest::Test
  def setup

    @will = Person.new("Will", 29)
    @jeff = Person.new("Jeff", 64)
    @bob = Person.new("Bob", 22)
    @mike = Person.new("Mike", 96)
    @ella = Person.new("Ella", 25)
    @deirdre = Person.new("Deirdre", 58)
    @car = Car.new("Red", "Mini", @will)
  end

  def test_car_color
    assert_equal("Red", @car.colour)
  end

  def test_car_model
    assert_equal("Mini", @car.model)
  end

  def test_accelerate
    @car.accelerate()
    assert_equal(10, @car.speed)
    assert_equal(95, @car.fuel_level)
  end

  def test_brake_above_zero
    @car.accelerate()
    @car.accelerate()
    @car.brake()
    assert_equal(10, @car.speed())
  end

  def test_brake_no_speed_below_zero
    @car.brake()
    assert_equal(0, @car.speed())
  end

  def test_check_driver
    assert_equal(@car.driver, @will)
  end

  def test_add_passengers
    @car.pick_up_passengers(@jeff)
    @car.pick_up_passengers(@bob)
    assert_equal(2, @car.passengers.length)
    assert_equal(@jeff, @car.passengers[0])
    assert_equal(@bob, @car.passengers[1])
  end

  def test_count_passengers
    assert_equal(0, @car.passengers.length)
    @car.pick_up_passengers(@jeff)
    assert_equal(1, @car.passengers.length)
  end

  def test_add_passengers_full
    @car.pick_up_passengers(@jeff)
    @car.pick_up_passengers(@bob) 
    @car.pick_up_passengers(@mike)
    @car.pick_up_passengers(@ella)

    full_message = @car.pick_up_passengers(@deirdre)

    assert_equal("Sorry, I'm full!", full_message)
    assert_equal(4, @car.passengers.length())
  end

end