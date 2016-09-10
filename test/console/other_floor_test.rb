require 'test_helper'
require 'dummy/dummy_state_holder'
require 'console/console_state_interface_test'

class OtherFloorTest < Minitest::Test
  def setup
    @state = OtherFloor.new(holder: DummyStateHolder.new)
  end

  include ConsoleStateInterfaceTest
end
