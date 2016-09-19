require 'test_helper'
require "dummy/dummy_configs.rb"

class PositionerTest < Minitest::Test
  def setup
    @psnr = Positioner.new( opts: DummyPositionerConfig.new({elevator: 'Elevator'}) )
  end

  def test_responds_to_pvt_method_arrival
    assert @psnr.respond_to?(:arrival, true)
  end
end
