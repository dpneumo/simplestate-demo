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
      holder.set_btn_status(symbol)
      holder.light_buttons
    end

    def exit
    end
end
