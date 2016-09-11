class Console < StateHolder
  def transition_to(state)
    puts "Console will be: #{state}"
    super
  end

  def button1_push
    positioner.goto_1
  end

  def button2_push
    positioner.goto_2
  end

  def button3_push
    positioner.goto_3
  end

  def button4_push
    positioner.goto_4
  end

  private
    def set_positioner(positioner)
      @positioner = positioner
    end
end
