require 'test_helper'
require 'dummy/dummy_state_holder'
require 'motor/motor_state_interface_test'

class StoppedTest < Minitest::Test
  def setup
    @state = Stopped.new(holder: DummyStateHolder.new)
  end

  include MotorStateInterfaceTest
end
