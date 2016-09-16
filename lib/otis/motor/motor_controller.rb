class MotorController < StateHolder
  attr_reader :motor
  def initialize(opts: {})
    @motor = opts.fetch :motor, Motor.new
    super
  end

  def transition_to(state)
    puts "\nMotor state will be: #{state}"
    super
  end
end
