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
      # Turn top floor button off
    end

    def exit
    end
end
