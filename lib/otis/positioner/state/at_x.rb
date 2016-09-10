class AtX < State
  def name
    raise NotImplementedError, "#name was called on an instance of AtX either directly or via super."
  end

  # Events
  def reach_4
    #no-op
  end

  def reach_3
    #no-op
  end

  def reach_2
    #no-op
  end

  def reach_1
    #no-op
  end

  def goto_1
    transition_to :GoingTo1
  end

  def goto_2
    transition_to :GoingTo2
  end

  def goto_3
    transition_to :GoingTo3
  end

  def goto_4
    transition_to :GoingTo4
  end

  private
    def enter
      # enter actions
    end

    def exit
      # exit actions
    end
end
