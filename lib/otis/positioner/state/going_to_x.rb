class GoingToX < State
  def name
    raise NotImplementedError, "#name was called on an instance of GoingToX either directly or via super."
  end

  def goto_1
    #no-op
  end

  def goto_2
    #no-op
  end

  def goto_3
    #no-op
  end

  def goto_4
    #no-op
  end

  def reach_1
    #no-op
  end

  def reach_2
    #no-op
  end

  def reach_3
    #no-op
  end

  def reach_4
    #no-op
  end

  private
  def enter
    # enter actions
  end

  def exit
    # exit actions
  end

  def arrival(event)
    holder.__send__ :arrival, event
  end
end
