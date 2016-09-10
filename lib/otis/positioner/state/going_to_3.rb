class GoingTo3 < GoingToX
  def name
    'GoingTo3'
  end

  def reach_3
    transition_to :At3
  end

  private
    def enter
      # enter actions
    end

    def exit
      # exit actions
    end
end
