class Motor
  attr_reader :speed
  def initialize
    @speed = 0
  end

  def run(speed: 0)
    @speed = speed
    run_motor
  end

  private
    def run_motor
      puts "motor speed is #{speed}"
    end
end
