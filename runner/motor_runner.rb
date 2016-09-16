require 'rubygems'
require 'bundler/setup'
require_relative "../lib/otis"

class Runner
  attr_reader :controller
  def initialize(controller: MotorController.new)
    @controller = controller
    @up_state =      Up.new(holder: @controller)
    @stopped_state = Stopped.new(holder: @controller)
    @down_state =    Down.new(holder: @controller)
  end

  def run
    controller.up_btn_press
    sleep 2
    controller.down_btn_press
    sleep 2
    controller.stop_btn_press
    sleep 2
    controller.down_btn_press
    sleep 2
    controller.up_btn_press
  end
end

r = Runner.new
r.controller.start(:Stopped)
puts "current state is #{r.controller.current_state.name}."
r.run
