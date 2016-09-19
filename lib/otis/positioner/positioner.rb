class Positioner < StateHolder
  attr_reader :elevator
  def initialize(opts: )
    # Call super first to make StateList available when building states
    super
    @opts = opts
    @elevator = opts.elevator
    @opts.build_positioner_states self
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
