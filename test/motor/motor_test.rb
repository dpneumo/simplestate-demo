require 'test_helper'

class MotorTest < Minitest::Test
  def setup
    @motor = Motor.new
  end

  def test_motor_initialized_with_with_speed_0
    assert_equal 0, @motor.speed
  end

  def test_can_tell_motor_to_run_at_a_new_speed
    @motor.run(speed: 10)
    assert_equal 10, @motor.speed
  end
end
