class At2 < AtX
  def name
    'At2'
  end

  # Events (overrides of AtX events)
  def goto_2
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
