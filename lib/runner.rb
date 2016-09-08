require 'rubygems'
require 'bundler/setup'
require 'simplestate'
require_relative "otis"
require "pry"

class Runner
  attr_reader :controller
  def initialize(controller: MotorController.new(initial_state: :Stopped))
    @controller = controller
    @up_state =      Up.new(holder: @controller)
    @stopped_state = Stopped.new(holder: @controller)
    @down_state =    Down.new(holder: @controller)
  end

  def run
    controller.up_btn_press
    sleep 3
    controller.down_btn_press
    sleep 3
    controller.stop_btn_press
    sleep 3
    controller.down_btn_press
    sleep 3
    controller.up_btn_press
  end
end

r = Runner.new
r.controller.start
puts "current state is #{r.controller.current_state.name}."
r.run
