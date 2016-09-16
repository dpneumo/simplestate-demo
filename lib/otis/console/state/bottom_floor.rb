class BottomFloor < State
  def name
    'BottomFloor'
  end

  def pushed_1
    # no-op
  end

  def pushed_2
    departure :goto_2
  end

  def pushed_3
    departure :goto_3
  end

  def pushed_4
    departure :goto_4
  end

  def arrive_top
    transition_to :TopFloor
  end

  def arrive_bottom
    # no-op
  end

  def arrive_other
    transition_to :OtherFloor
  end


  private
  def enter
    holder.__send__ :set_btn_states, btn_states
  end

  def exit
  end

  def departure(event)
    holder.__send__ :departure, event
  end

  def btn_states
    { btn1: :off,  btn2: :on,  btn3: :on,  btn4: :on }
  end
end
