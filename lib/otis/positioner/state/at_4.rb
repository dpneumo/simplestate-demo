class At4 < AtX
  def name
    'At4'
  end

  # Events (overrides of AtX events)
  def goto_4
    #no-op
  end

  private
  def publish_location
    holder.__send__ :arrival, :arrive_top
  end
end
