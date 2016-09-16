class At3 < AtX
  def name
    'At3'
  end

  # Events (overrides of AtX events)
  def goto_3
    #no-op
  end

  private
  def publish_location
    holder.__send__ :arrival, :arrive_other
  end
end
