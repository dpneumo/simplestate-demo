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
      # Turn bottom floor btn off
    end

    def exit
    end
end
