class Positioner < StateHolder
  attr_reader :elevator
  def initialize(opts: {})
    @elevator = opts.fetch :elevator
    super
  end

  def transition_to(state)
    puts "Positioner state will be: #{state}"
    super
  end

  def arrive_top
    elevator.arrival(:arrive_top)
  end

  def arrive_bottom
    elevator.arrival(:arrive_bottom)
  end

  def arrive_other
    elevator.arrival(:arrive_other)
  end
end
