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

  def arrive_top
    elevator.__send__ :arrival, :arrive_top
  end

  def arrive_bottom
    elevator.__send__ :arrival, :arrive_bottom
  end

  def arrive_other
    elevator.__send__ :arrival, :arrive_other
  end
end
