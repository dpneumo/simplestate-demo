class TopFloor < State
  def name
    'TopFloor'
  end

  def pushed_1
    departure :goto_1
  end

  def pushed_2
    departure :goto_2
  end

  def pushed_3
    departure :goto_3
  end

  def pushed_4
    # no-op
  end

  def arrive_top
    # no-op
  end

  def arrive_bottom
    transition_to :BottomFloor
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
    { btn1: :on,   btn2: :on,  btn3: :on,  btn4: :off }
  end
end
