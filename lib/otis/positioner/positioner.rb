class Positioner < StateHolder
  attr_reader :elevator
  def initialize(opts: {})
    @elevator = opts.fetch :elevator
    super
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
