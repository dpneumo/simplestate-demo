require 'test_helper'

class ConsoleTest < Minitest::Test
  def setup
    @elev = Elevator.new
    @cons = @elev.console
    @pos  = @elev.positioner
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

  def test_button2_push_sends_elevator_to_floor_2
    @cons.button2_push
    assert_equal :At2, @pos.current_state.symbol
  end
end
