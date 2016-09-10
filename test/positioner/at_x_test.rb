require 'test_helper'
require 'dummy/dummy_state_holder'
require 'console/console'
require 'positioner/positioner_state_interface_test'

class AtXTest < Minitest::Test
  def setup
    console = Console.new(initial_state: :BottomFloor)
    holder  = DummyStateHolder.new
    @state = AtX.new( holder: holder,
                      opts: {console: console} )
  end

  include PositionerStateInterfaceTest
end
