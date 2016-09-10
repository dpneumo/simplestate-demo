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
      # Turn all floor btns on
    end

    def exit
    end
end
