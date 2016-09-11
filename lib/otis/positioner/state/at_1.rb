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
      bottom_btn_off
    end

    def exit
      # exit actions
    end

    def bottom_btn_off
      holder.arrive_bottom
    end
end
