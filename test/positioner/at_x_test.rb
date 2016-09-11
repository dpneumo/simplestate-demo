require 'test_helper'
require 'dummy/dummy_state_holder'
require 'positioner/positioner_state_interface_test'

class AtXTest < Minitest::Test
  def setup
    holder  = DummyStateHolder.new
    @state = AtX.new( holder: holder )
  end

  include PositionerStateInterfaceTest
end
