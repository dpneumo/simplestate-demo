require 'test_helper'
require 'positioner/positioner'

class ConsoleTest < Minitest::Test
  def setup
    @cons = Console.new( initial_state: :BottomFloor )
    @pos =  Positioner.new( initial_state: :At1,
                            opts: {console: @cons} )
    @cons.__send__(:set_positioner, @pos)
  end

  def test_responds_to_button1_push
    assert_respond_to(@cons, :button1_push)
  end

  def test_responds_to_button2_push
    assert_respond_to(@cons, :button2_push)
  end

  def test_responds_to_button3_push
    assert_respond_to(@cons, :button3_push)
  end

  def test_responds_to_button4_push
    assert_respond_to(@cons, :button4_push)
  end
end
