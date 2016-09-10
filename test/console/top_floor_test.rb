require 'test_helper'
require 'dummy/dummy_state_holder'
require 'console/console_state_interface_test'

class TopFloorTest < Minitest::Test
  def setup
    @state = TopFloor.new(holder: DummyStateHolder.new)
  end

  include ConsoleStateInterfaceTest
end
