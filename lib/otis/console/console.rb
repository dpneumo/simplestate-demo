class Console < StateHolder
  attr_reader :elevator
  def initialize(opts: {})
    @elevator = opts.fetch :elevator
    init_btn_states
    super
  end

  def transition_to(state)
    puts "Console state will be: #{state}"
    super
  end

  def button1_push
    elevator.button_push(:goto_1) if @btn1_state == :on
  end

  def button2_push
    elevator.button_push(:goto_2) if @btn2_state == :on
  end

  def button3_push
    elevator.button_push(:goto_3) if @btn3_state == :on
  end

  def button4_push
    elevator.button_push(:goto_4) if @btn4_state == :on
  end

  def set_btn_status(console_state)
    states = @btn_states[console_state]
    @btn1_state = states[:btn1]
    @btn2_state = states[:btn2]
    @btn3_state = states[:btn3]
    @btn4_state = states[:btn4]
  end

  def light_buttons
    # @btn1_state == :on ? btn1_on : btn1_off
    # @btn2_state == :on ? btn2_on : btn2_off
    # @btn3_state == :on ? btn3_on : btn3_off
    # @btn4_state == :on ? btn4_on : btn4_off
  end

  #private
    attr_reader :btn_states

    def init_btn_states
    @btn_states = { BottomFloor: { btn1: :off, btn2: :on, btn3: :on, btn4: :on  },
                    OtherFloor:  { btn1: :on,  btn2: :on, btn3: :on, btn4: :on  },
                    TopFloor:    { btn1: :on,  btn2: :on, btn3: :on, btn4: :off } }
    end
end
