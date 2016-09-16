class TopFloor < State
  def name
    'TopFloor'
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
