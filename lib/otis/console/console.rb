class Console < StateHolder
  attr_reader
  def initialize(initial_state:, state_history: StateHistory.new, opts: {})
    super
  end

  def transition_to(state)
    puts "New state will be: #{state}"
    super
  end
end
