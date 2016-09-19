class Positioner < StateHolder
  attr_reader :elevator
  def initialize(opts: )
    # opts expects an object that responds to elevator message. Thus not a hash.
    # Call super first to make StateList available when building states
    super
    @opts = opts
    @elevator = opts.elevator
    @opts.__send__ :build_positioner_states, self
  end

  def transition_to(state)
    puts "Positioner state is: #{state}"
    super
  end

  private
  def arrival(event)
    elevator.__send__ :arrival, event
  end
end
