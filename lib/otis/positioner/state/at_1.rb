class At1 < AtX
  def name
    'At1'
  end

  # Events (overrides of AtX events)
  def goto_1
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
