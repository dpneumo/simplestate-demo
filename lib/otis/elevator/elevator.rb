class Elevator
  attr_reader :console, :positioner
  def initialize( console:    Console.new(    opts: ConsoleConfig.new(elevator: self) ),
                  positioner: Positioner.new( opts: PositionerConfig.new(elevator: self) )
                )
    @console    = console
    @positioner = positioner
    start_elevator
  end

  def push_btn_1
    console.__send__ :pushed_1
  end

  def push_btn_2
    console.__send__ :pushed_2
  end

  def push_btn_3
    console.__send__ :pushed_3
  end

  def push_btn_4
    console.__send__ :pushed_4
  end

  def history
    (0..9).map {|i| [ i, console.history[i], positioner.history[2*i], positioner.history[2*i+1] ]}
  end

  private
  def departure(event)
    positioner.__send__ event
  end

  def arrival(event)
    console.__send__ event
  end

  def start_elevator
    console.start(:BottomFloor)
    positioner.start(:At1)
  end
end
