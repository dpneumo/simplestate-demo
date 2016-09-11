require 'test_helper'
require 'dummy/dummy_state_holder'
require 'positioner/positioner_state_interface_test'

class GoingToXTest < Minitest::Test
  def setup
    holder  = DummyStateHolder.new
    @state = GoingToX.new( holder: holder )
  end

  include PositionerStateInterfaceTest
end
