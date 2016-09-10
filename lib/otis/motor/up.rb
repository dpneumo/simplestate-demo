class Up < State
  def name
    'Up'
  end

  def up_btn_press
    # No Op
  end

  def stop_btn_press
    transition_to :Stopped
  end

  def down_btn_press
    transition_to :Down
  end

  private
    def speed
      10
    end

    def enter
      holder.motor.run(speed: speed)
    end

    def exit
      holder.motor.run(speed: 0)
      sleep 1
    end
end
