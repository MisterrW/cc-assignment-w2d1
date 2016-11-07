require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../car')
require_relative('../person')


class PersonTest < Minitest::Test
  def setup
    @will = Person.new("Will", 29)
  end

  def test_person_name
    assert_equal("Will", @will.name)
  end

  def test_person_age
    assert_equal(29, @will.age)
  end  

end

