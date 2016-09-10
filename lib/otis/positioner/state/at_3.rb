class At3 < AtX
  def name
    'At3'
  end

  # Events (overrides of AtX events)
  def goto_3
    #no-op
  end

  private
    def enter
      # enter actions
    end

    def exit
      # exit actions
    end
end
