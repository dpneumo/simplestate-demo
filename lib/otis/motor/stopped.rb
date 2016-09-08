class Stopped < State
  def name
    'Stopped'
  end

  def up_btn_press
    holder.transition_to :Up
  end

  def stop_btn_press
    # No Op
  end

  def down_btn_press
    holder.transition_to :Down
  end

  private
    def speed
      0
    end

    def enter
      holder.motor.run(speed: speed)
    end

    def exit
      holder.motor.run(speed: 0)
      sleep 1
    end
end
