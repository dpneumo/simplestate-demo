class OtherFloor < State
  def name
    'OtherFloor'
  end

  def pushed_1
    departure :goto_1
  end

  def pushed_2
    # no-op
  end

  def pushed_3
    # no-op
  end

  def pushed_4
    departure :goto_4
  end

  def arrive_top
    transition_to :TopFloor
  end

  def arrive_bottom
    transition_to :BottomFloor
  end

  def arrive_other
    # no-op
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
    { btn1: :on,  btn2: :on, btn3: :on, btn4: :on  }
  end
end
