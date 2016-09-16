class TopFloor < State
  def name
    'TopFloor'
  end

  def pushed_1
    holder.elevator.send :departure, :goto_1
  end

  def pushed_2
    holder.elevator.send :departure, :goto_2
  end

  def pushed_3
    holder.elevator.send :departure, :goto_3
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
      holder.__send__ :set_btn_status, symbol
      holder.__send__ :light_buttons
    end

    def exit
    end
end
