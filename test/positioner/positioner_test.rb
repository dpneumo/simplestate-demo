require 'test_helper'
require 'elevator/elevator'
require 'console/console'

class PositionerTest < Minitest::Test
  def setup
    @elev = Elevator.new
    @pos =  @elev.positioner
  end

  def test_responds_to_arrive_top
    assert_respond_to(@pos, :arrive_top)
  end

  def test_responds_to_arrive_bottom
    assert_respond_to(@pos, :arrive_bottom)
  end

  def test_responds_to_arrive_other
    assert_respond_to(@pos, :arrive_other)
  end
end
