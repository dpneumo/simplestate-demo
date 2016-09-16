class At1 < AtX
  def name
    'At1'
  end

  # Events (overrides of AtX events)
  def goto_1
    #no-op
  end

  private
  def publish_location
    holder.__send__ :arrival, :arrive_bottom
  end
end
