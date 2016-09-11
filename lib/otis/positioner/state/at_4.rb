class At4 < AtX
  def name
    'At4'
  end

  # Events (overrides of AtX events)
  def goto_4
    #no-op
  end

  private
    def enter
      top_btn_off
    end

    def exit
      # exit actions
    end

    def top_btn_off
      holder.arrive_top
    end
end
