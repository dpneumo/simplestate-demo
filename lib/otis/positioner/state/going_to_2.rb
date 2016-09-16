class GoingTo2 < GoingToX
  def name
    'GoingTo2'
  end

  def reach_2
    transition_to :At2
  end

  private
    def enter
      reach_2
    end

    def exit
      # exit actions
    end
end
