class AtX < State
  def name
    raise NotImplementedError, "#name was called on an instance of AtX either directly or via super."
  end

  # Events
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

  private
  def enter
    publish_location
  end

  def exit
    # exit actions
  end

  def arrival(event)
    holder.__send__ :arrival, event
  end

  def publish_location
    raise NotImplementedError, "#publish_location was called on an instance of AtX either directly or via super."
  end
end
