class GoingTo3 < GoingToX
  def name
    'GoingTo3'
  end

  def reach_3
    transition_to :At3
  end

  private
    def enter
      reach_3
    end

    def exit
      # exit actions
    end
end
