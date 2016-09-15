require 'test_helper'
require 'elevator/elevator'
require 'positioner/positioner'
require 'positioner/state/at_1'
require 'positioner/state/at_2'
require 'positioner/state/at_3'
require 'positioner/state/at_4'
require 'positioner/state/going_to_1'
require 'positioner/state/going_to_2'
require 'positioner/state/going_to_3'
require 'positioner/state/going_to_4'

class ConsoleTest < Minitest::Test
  def setup
    @elev = Elevator.new
    @cons = @elev.console
      BottomFloor.new(holder: @cons)
      TopFloor.new(holder: @cons)
      OtherFloor.new(holder: @cons)
    @cons.start(:BottomFloor)

    @pos  = @elev.positioner
      At1.new(holder: @pos)
      At2.new(holder: @pos)
      At3.new(holder: @pos)
      At4.new(holder: @pos)
      GoingTo1.new(holder: @pos)
      GoingTo2.new(holder: @pos)
      GoingTo3.new(holder: @pos)
      GoingTo4.new(holder: @pos)
    @pos.start(:At1)
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
    assert_equal :GoingTo2, @pos.current_state.symbol
  end
end
