class Elevator
  attr_reader :console, :positioner
  def initialize( console: nil,
                  positioner: nil,
                  opts: {})
    cons_init_state = opts.fetch :cons_start, :BottomFloor
    pos_init_state  = opts.fetch :pos_start,  :At1

    @console    = console    || Console.new(    opts: {elevator: self} )
    @positioner = positioner || Positioner.new( opts: {elevator: self} )
  end

  def button_push(event)
    positioner.send event
  end

  def arrival(event)
    console.send event
  end
end
