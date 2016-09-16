class OtherFloor < State
  def name
    'OtherFloor'
  end

  def pushed_1
    holder.elevator.send :departure, :goto_1
  end

  def pushed_2
    # no-op
  end

  def pushed_3
    # no-op
  end

  def pushed_4
    holder.elevator.send :departure, :goto_4
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
      holder.__send__ :set_btn_status, symbol
      holder.__send__ :light_buttons
    end

    def exit
    end
end
