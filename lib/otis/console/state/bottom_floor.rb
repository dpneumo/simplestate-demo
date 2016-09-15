class BottomFloor < State
  def name
    'BottomFloor'
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
      holder.set_btn_status(symbol)
      holder.light_buttons
    end

    def exit
    end
end
