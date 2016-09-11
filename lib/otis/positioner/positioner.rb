class Positioner < StateHolder
  attr_reader :console
  def initialize(initial_state:, state_history: StateHistory.new, opts: {})
    @console = opts.fetch :console
    super
  end

  def transition_to(state)
    puts "New state will be: #{state}"
    super
  end

  def arrive_top
    console.arrive_top
  end

  def arrive_bottom
    console.arrive_bottom
  end

  def arrive_other
    console.arrive_other
  end
end
