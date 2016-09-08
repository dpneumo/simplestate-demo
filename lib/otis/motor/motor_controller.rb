class MotorController < StateHolder
  attr_reader :motor
  def initialize(initial_state:, state_history: StateHistory.new, opts: {})
    @motor = opts.fetch :motor, Motor.new
    super
  end

  def transition_to(state)
    puts "New state will be: #{state}"
    super
  end
end
