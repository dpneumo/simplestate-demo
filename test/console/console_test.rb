require 'test_helper'

class ConsoleTest < Minitest::Test
  def setup
    @elev = Elevator.new
    @cons = @elev.console
    @pos  = @elev.positioner
  end

  def test_responds_to_pushed_1
    assert_respond_to(@cons, :pushed_1)
  end

  def test_responds_to_pushed_2
    assert_respond_to(@cons, :pushed_2)
  end

  def test_responds_to_pushed_3
    assert_respond_to(@cons, :pushed_3)
  end

  def test_responds_to_pushed_4
    assert_respond_to(@cons, :pushed_4)
  end

  def test_pushed_2_sends_elevator_to_floor_2
    @cons.pushed_2
    assert_equal :At2, @pos.current_state.symbol
  end
end
