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
      all_btns_on
    end

    def exit
      # exit actions
    end

    def all_btns_on
      console.arrive_other
    end
end
