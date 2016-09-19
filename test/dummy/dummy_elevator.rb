class DummyElevator
  attr_reader :console, :positioner
  def initialize( console:    DummyStateHolder.new,
                  positioner: DummyStateHolder.new,
                  opts:       OpenStruct.new )
    @opts = opts
    @console    = console
    @positioner = positioner
    define_elevator
  end

  def push_btn_1; end
  def push_btn_2; end
  def push_btn_3; end
  def push_btn_4; end

  private
  def departure(event)
    positioner.__send__ event
  end

  def arrival(event)
    console.__send__ event
  end

  def define_elevator
  end
end
