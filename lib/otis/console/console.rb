class Console < StateHolder
  attr_reader :elevator
  def initialize(opts: )
    # Call super first to make StateList available when building states
    super
    @opts = opts
    @elevator = opts.elevator
    @opts.build_console_states(self)
  end

  def transition_to(state)
    puts "\nConsole state is: #{state}"
    super
  end

  private
  def departure(event)
    elevator.__send__ :departure, event
  end

  def set_btn_states(states)
    # @btn1_state = states[:btn1]
    # @btn2_state = states[:btn2]
    # @btn3_state = states[:btn3]
    # @btn4_state = states[:btn4]
  end
end
