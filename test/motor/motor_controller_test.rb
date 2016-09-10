require 'test_helper'
require 'dummy/dummy_state'

class MotorControllerTest < Minitest::Test
  def setup
    @mc = MotorController.new(initial_state: DummyState.new)
  end

  def test_truth
    assert true
  end
end
