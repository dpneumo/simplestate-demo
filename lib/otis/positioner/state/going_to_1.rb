class GoingTo1 < GoingToX
  def name
    'GoingTo1'
  end

  def reach_1
    transition_to :At1
  end

  private
    def enter
      # enter actions
    end

    def exit
      # exit actions
    end
end
