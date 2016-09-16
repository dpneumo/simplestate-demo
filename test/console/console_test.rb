require 'test_helper'

class ConsoleTest < Minitest::Test
  def setup
    @elev = Elevator.new
    @cons = @elev.console
    @pos  = @elev.positioner
  end

  def test_responds_to_pvt_method_set_btn_states
    cnsl = Console.new( opts: {elevator: 'Elevator'} )
    assert cnsl.respond_to?(:set_btn_states, true)
  end

  def test_responds_to_pvt_method_departure
    cnsl = Console.new( opts: {elevator: 'Elevator'} )
    assert cnsl.respond_to?(:departure, true)
  end
end
