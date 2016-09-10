class GoingTo4 < GoingToX
  def name
    'GoingTo4'
  end

  def reach_4
    transition_to :At4
  end

  private
    def enter
      # enter actions
    end

    def exit
      # exit actions
    end
end
