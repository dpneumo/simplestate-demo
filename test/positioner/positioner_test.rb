require 'test_helper'
require 'console/console'

class PositionerTest < Minitest::Test
  def setup
    @cons = Console.new( initial_state: :BottomFloor )
    @pos =  Positioner.new( initial_state: :At1,
                            opts: {console: @cons} )
    @cons.__send__(:set_positioner, @pos)
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
