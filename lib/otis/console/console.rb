class Console < StateHolder
  attr_reader :elevator
  def initialize(opts: )
    # opts[:config] expects an object that responds to elevator message. Thus not a hash.
    # Call super first to make StateList available when building states
    super
    config = opts.fetch :config
    config.__send__ :build_console_states, self
    hx_size_limit = config.hx_size_limit
    @elevator = config.elevator
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
