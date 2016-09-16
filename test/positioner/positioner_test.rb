require 'test_helper'

class PositionerTest < Minitest::Test
  def setup
    @elev = Elevator.new
    @pos =  @elev.positioner
  end

  def test_responds_to_pvt_method_arrival
    psnr = Positioner.new( opts: {elevator: 'Elevator'} )
    assert psnr.respond_to?(:arrival, true)
  end
end
