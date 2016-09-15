class OtherFloor < State
  def name
    'OtherFloor'
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
      holder.set_btn_status(symbol)
      holder.light_buttons
    end

    def exit
    end
end
