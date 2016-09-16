class At2 < AtX
  def name
    'At2'
  end

  # Events (overrides of AtX events)
  def goto_2
    #no-op
  end

  private
  def publish_location
    holder.__send__ :arrival, :arrive_other
  end
end
